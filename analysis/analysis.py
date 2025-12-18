import json
import logging
import os
from enum import Enum
from functools import total_ordering
from pprint import pformat
from typing import Union
import numpy as np

from math import ceil

import fire

# from analysis.config import (DtypeConfig, GPUConfig, ModelConfig, ParallelismConfig, 
#                     get_dtype_config_by_name,
#                     get_gpu_config_by_name,
#                     get_model_config_by_name)
# from analysis.constant import *
# from analysis.logger import logger
# from analysis.utils import _latency_to_string, _num_to_string, within_range, split_stage, activation_nums, weight_op_grad_memory_per_gpu, activation_layers_per_gpu, memory_per_gpu, balance_memory
from config import (DtypeConfig, GPUConfig, ModelConfig, ParallelismConfig, 
                    get_dtype_config_by_name,
                    get_gpu_config_by_name,
                    get_model_config_by_name)
from constant import *
from logger import logger
from utils import _latency_to_string, _num_to_string, within_range, split_stage, activation_nums, weight_op_grad_memory_per_gpu, activation_layers_per_gpu, memory_per_gpu, balance_memory
'''
split_stage: 利用pp_size和模型层数计算出stage数 均匀切分 并返回stage数对应的层数列表
activation_nums: 激活值保留的个数
weight_op_grad_memory_per_gpu: 权重、优化器状态、梯度计算内存开销
activation_layers_per_gpu: 每个gpu中需要保存的激活值层数
memory_per_gpu: 每个gpu的内存开销
balance_memory: 均分内存
'''


@total_ordering
class ActivationRecomputation(Enum):
    '''
    选择重计算粒度
    NONE: 不进行激活重计算
    ATTN_COMPUTE: 选择重计算attention computation在attention模块中的(QK^T matrix multiply, softmax, softmax dropout, and attention over V.) 这部分内存开销较大但重计算代价不高
    FULL: 选择重计算整个transformer层
    ATTN: 选择重计算整个attention模块
    NORM_ATTN_NORM: 选择重计算(layernom-attention-layernom)
    '''
    NONE = 0                     
    ATTN_COMPUTE = 1
    FULL = 2            
    ATTN = 3                   
    NORM_ATTN_NORM = 4                               
    def __lt__(self, other):
        if self.__class__ is other.__class__:
            return self.value < other.value
        return NotImplemented


@total_ordering
class DSZeRO(Enum):
    '''
    Deepspeed Stage
    NONE: 不使用Deepspeed
    STAGE_1: 使用Deepspeed Stage 1
    STAGE_2: 使用Deepspeed Stage 2
    STAGE_3: 使用Deepspeed Stage 3
    '''
    NONE = 0
    STAGE_1 = 1
    STAGE_2 = 2
    STAGE_3 = 3
    def __lt__(self, other):
        if self.__class__ is other.__class__:
            return self.value < other.value
        return NotImplemented


class LLMAnalysis:
    """
    给定模型、GPU、数据类型、并行配置/实现 LLMAnalysis 估计 LLM 的训练或推理的延迟和内存使用情况。
    请参阅 `train` 和 `infer` 入口函数的用法细节。
    """
    def __init__(
        self,
        model_config: ModelConfig,
        gpu_config: GPUConfig,
        dtype_config: DtypeConfig = DtypeConfig(),
        parallelism_config: ParallelismConfig = ParallelismConfig(),
        achieved_tflops: float = None,                                
        achieved_memory_bandwidth_GBs: float = None,                  
        flops_efficiency: float = None,
        hbm_memory_efficiency: float = None,
        intra_node_memory_efficiency: float = INTRA_NODE_MEMORY_EFFICIENCY,
        inter_node_memory_efficiency: float = INTER_NODE_MEMORY_EFFICIENCY,
        use_bias: bool = True,
        use_rmsnorm: bool = True,
        cache_enabled: bool = False,
        use_mc2: bool = True,
    ) -> None:
        """
        LLMAnalysis构建器
        参数：
            model_config (ModelConfig): 模型配置
            gpu_config (GPUConfig): GPU配置
            dtype_config (DtypeConfig, optional): 数据类型配置。默认为DtypeConfig()。
            parallelism_config (ParallelismConfig, optional): 并行配置。默认为ParallelismConfig()。
            achieved_tflops (float, optional): 每个GPU的已实现TFLOPS。如果指定 将覆盖flops_efficiency传入的。默认为None。
            achieved_memory_bandwidth_GBs (float, optional): GPU内存带宽的已实现值 单位为GB/s 。如果指定 将覆盖hbm_memory_efficiency传入的。默认为None。
            flops_efficiency (float, optional): flops效率 从0到1。默认为None。
            hbm_memory_efficiency (float, optional): GPU HBM内存效率 从0到1。默认为None。
            intra_node_memory_efficiency (float, optional): 内存效率 从0到1。默认为INTRA_NODE_MEMORY_EFFICIENCY。
            inter_node_memory_efficiency (float, optional): 内存效率 从0到1。默认为INTER_NODE_MEMORY_EFFICIENCY。
            use_bias(bool, optional): 是否使用偏置。默认为False。
            use_rmsnorm(bool, optional): 是否使用RMSNorm。默认为True。
            cache_enabled(bool, optional): 是否缓存fp16/bf16精度梯度。默认为False。
            use_mc2 (bool, optional): 是否使用计算通信混合模式进行训练加速. 默认为True。
        """
        self.model_config = model_config
        self.gpu_config = gpu_config
        self.parallelism_config = parallelism_config
        self.dtype_config = dtype_config
        self.intra_node_memory_efficiency = intra_node_memory_efficiency
        self.inter_node_memory_efficiency = inter_node_memory_efficiency
        self.use_bias = use_bias
        self.use_rmsnorm = use_rmsnorm
        self.cache_enabled = cache_enabled
        self.use_mc2 = use_mc2
        
        if achieved_memory_bandwidth_GBs and hbm_memory_efficiency:
            self.hbm_memory_efficiency = (
                achieved_memory_bandwidth_GBs /
                gpu_config.hbm_bandwidth_in_GB_per_sec)
        elif hbm_memory_efficiency:
            self.hbm_memory_efficiency = hbm_memory_efficiency
        elif achieved_memory_bandwidth_GBs:
            self.hbm_memory_efficiency = (
                achieved_memory_bandwidth_GBs /
                gpu_config.hbm_bandwidth_in_GB_per_sec)
        else:
            self.hbm_memory_efficiency = HBM_MEMORY_EFFICIENCY
        
        assert self.hbm_memory_efficiency > 0 and self.hbm_memory_efficiency <= 1, (
            "hbm_memory_efficiency must be in (0, 1], check the achieved_memory_bandwidth_GBs and hbm_memory_efficiency passed in")
        
        if achieved_tflops and flops_efficiency:
            self.flops_efficiency = (achieved_tflops /
                                     gpu_config.peak_fp16_TFLOPS)
        elif flops_efficiency:
            self.flops_efficiency = flops_efficiency
        elif achieved_tflops:
            self.flops_efficiency = (achieved_tflops /
                                     gpu_config.peak_fp16_TFLOPS)
        else:
            self.flops_efficiency = FLOPS_EFFICIENCY

        assert self.flops_efficiency > 0 and self.flops_efficiency <= 1, (
            "flops_efficiency must be in (0, 1], check the achieved_tflops and flops_efficiency passed in")
        if self.flops_efficiency > 0.55:
            #logger.warning("Note that Megatron-LM reported up to 0.6 flops efficiency for large scale model training")
            pass

        if self.parallelism_config.sp_size > 1:
            assert (
                self.parallelism_config.sp_size == self.parallelism_config.tp_size
            ), ("if sequence parallelism size > 1, it must be equal to tensor parallelism size using Megatron-LM sequence parallelism")     
            
        self.total_num_params = self.get_num_params_total()
        self.total_num_params_mlp = self.get_num_params_per_layer_mlp() * self.model_config.num_layers
        self.total_num_params_embedding = self.get_num_params_embedding()
        self.total_num_params_others = self.total_num_params - self.total_num_params_mlp - self.total_num_params_embedding
        self.total_num_active_params = self.get_num_active_params_total()
        
    def update_model_config(self, model_config: ModelConfig) -> None:
        '''
        更新模型配置
        '''
        self.model_config = model_config

    def update_gpu_config(self, gpu_config: GPUConfig) -> None:
        '''
        更新GPU配置
        '''
        self.gpu_config = gpu_config

    def update_dtype_config(self, dtype_config: DtypeConfig) -> None:
        '''
        更新数据类型配置
        '''
        self.dtype_config = dtype_config

    def update_parallelism_config(
            self, parallelism_config: ParallelismConfig) -> None:
        '''
        更新并行配置
        '''
        self.parallelism_config = parallelism_config

    def update_intra_node_memory_efficiency(
            self, intra_node_memory_efficiency: float) -> None:
        '''
        更新节点内传输效率
        '''
        self.intra_node_memory_efficiency = intra_node_memory_efficiency

    def update_inter_node_memory_efficiency(
            self, inter_node_memory_efficiency: float) -> None:
        '''
        更新节点间传输效率
        '''
        self.inter_node_memory_efficiency = inter_node_memory_efficiency

    def update_float_efficiency(self, flops_efficiency: float) -> None:
        '''
        更新flops效率
        '''
        self.flops_efficiency = flops_efficiency

    def get_gpu_hbm_bandwidth(self):
        '''
        获取GPU内存带宽
        '''
        return (self.gpu_config.hbm_bandwidth_in_GB_per_sec *
                self.hbm_memory_efficiency)

    def get_intra_node_bandwidth(self):
        '''
        获取节点内传输带宽
        '''
        return (self.gpu_config.intra_node_bandwidth_in_GB_per_sec *
                self.intra_node_memory_efficiency)

    def get_inter_node_bandwidth(self):
        '''
        获取节点间传输带宽
        '''
        return (self.gpu_config.inter_node_bandwidth_in_GB_per_sec *
                self.inter_node_memory_efficiency)
        
    def get_TFLOPS_per_gpu(self):
        """
        对于对应的数据类型和配置 获取每个GPU的TFLOPS(被flops_efficiency调整过的)
        返回值:
            float: TFLOPS per GPU
        """
        wbits = self.dtype_config.weight_bits
        abits = self.dtype_config.activation_bits
        higher_bits = max(wbits, abits)  # gemm dtype/TFLOPS is determined by the higher bits
        if higher_bits == 4:
            gemm_TFOPS = self.gpu_config.peak_i4_TFLOPS
        elif higher_bits == 8:
            gemm_TFOPS = self.gpu_config.peak_i8_TFLOPS
        else:
            assert (higher_bits == 16), "weight_bits and activation_bits must be 4, 8, or 16"
            gemm_TFOPS = self.gpu_config.peak_fp16_TFLOPS
        return gemm_TFOPS * self.flops_efficiency
    
    def get_pivot(self):
        """
        返回pivot point, 定义为
        (model_weights / hbm_bandwidth) / (model_flops / TFLOPS_per_gpu)
        返回值:
            float: pivot point
        """
        pivot = (self.get_TFLOPS_per_gpu() * 10**3 *
                 self.dtype_config.activation_bits / BITS_PER_BYTE /
                 self.get_gpu_hbm_bandwidth() / 2)
        return pivot
    
    def get_num_params_embedding(self, shared_embedding: bool = True):
        """
        获取嵌入层参数数量
        参数：
            shared_embedding (bool, optional): 输入和输出embedding是否共享嵌入层。默认为True
        返回值:
            int: 嵌入层参数数量
        """
        num_params_input_embedding = (self.model_config.hidden_dim *
                                      self.model_config.vocab_size)
        num_params_output_embedding = (self.model_config.hidden_dim *
                                       self.model_config.vocab_size
                                       if not shared_embedding else 0)
        return num_params_input_embedding + num_params_output_embedding
    
    
    def get_num_params_per_layer_attn(self):
        """
        获取每层attention中线性层的参数数量 包括query/key/value和output的投影
        返回值:
            int: 每层attention的参数数量
        """
        num_heads_per_gpu = max(
            self.model_config.num_key_value_heads / self.parallelism_config.tp_size, 1)  
        # At least on attention head on each tensor-parallel GPU
        num_key_value_heads = num_heads_per_gpu * self.parallelism_config.tp_size
        # (w_q + w_o) + (w_k + w_v)
        # 对于GQA key和value的参数量相应减少
        ###
        if self.use_bias:
            return int(2 * (self.model_config.hidden_dim**2 + self.model_config.hidden_dim) + 2 * (self.model_config.hidden_dim + 1) * (self.model_config.hidden_dim * num_key_value_heads / self.model_config.n_head))
        else:
            return int(2 * self.model_config.hidden_dim**2 + 2 * self.model_config.hidden_dim * (self.model_config.hidden_dim * num_key_value_heads / self.model_config.n_head))
    
    def get_num_params_per_layer_mlp(self):
        """
        获取每层中MLP线性层的参数数量 包括中间和输出映射矩阵
        返回值:
            int: MLP两个线性层的参数数量
        """
        # 如果使用门控激活单元，需要三个线性层；否则需要两个。
        if self.use_bias:
            return ((2 if self.model_config.mlp_gated_linear_units else 1) * (self.model_config.hidden_dim + 1) * self.model_config.ffn_embed_dim + 
                    (self.model_config.ffn_embed_dim + 1) * self.model_config.hidden_dim) * self.model_config.moe_num_experts
        else:
            return ( 3 if self.model_config.mlp_gated_linear_units else 2
        ) * self.model_config.hidden_dim * self.model_config.ffn_embed_dim * self.model_config.moe_num_experts
        
    def get_num_params_per_layer_router(self):
        '''
        获取每层moe中路由层所需要的参数数量
        '''
        if self.model_config.moe_num_experts > 1:
            if self.use_bias:
                return (self.model_config.hidden_dim + 1) * self.model_config.moe_num_experts
            else:
                return self.model_config.hidden_dim * self.model_config.moe_num_experts
        else:
            return 0
        
    def get_num_params_per_layer_layernorm(self):
        '''
        获取每个层中layernorm参数数量 考虑了两个RMSNorm
        '''
        return (1 if self.use_rmsnorm else 2) * 2 * self.model_config.hidden_dim
    
    def get_num_params_last_layernorm(self):
        '''
        获取最后一个layernorm层参数数量
        在所有transformer块后和output embedding前会有一个layernorm层
        '''
        return (1 if self.use_rmsnorm else 2) * self.model_config.hidden_dim
    
    def get_num_params_per_layer(self):
        """
        获取每个transformer层的参数数量 包括attention层、MLP层、layernorm层以及router
        Get the number of parameters in a transformer layer, including the attention and MLP linear layers.
        返回值:
            int: the number of parameters in a transformer layer
        """
        return (self.get_num_params_per_layer_attn() +
                self.get_num_params_per_layer_mlp() +
                self.get_num_params_per_layer_router() +
                self.get_num_params_per_layer_layernorm())
        
    def get_num_active_params_per_layer(self):
        """
        获取一个transformer层的激活参数 包括attention和MoE激活的MLP线性层
        返回值:
            int: 一个transformer层的动态参数量
        """
        return (
            self.get_num_params_per_layer_attn() +
            self.get_num_params_per_layer_mlp() * int(self.model_config.moe_top_k / self.model_config.moe_num_experts) +
            self.get_num_params_per_layer_router() +
            self.get_num_params_per_layer_layernorm())
        
    def get_num_params_total(self):
        """
        获取模型的总参数量 包括输入和输出embedding、所有的transformer层和最后一个LN层
        返回值:
            int: 模型的总参数量
        """
        return (
            self.model_config.num_layers * self.get_num_params_per_layer() +
            self.get_num_params_embedding(shared_embedding=False) +
            self.get_num_params_last_layernorm())
        
    def get_num_active_params_total(self):
        """
        获取模型激活的总参数量
        返回值:
            int: 模型的激活总参数量
        """
        return (self.model_config.num_layers *
                self.get_num_active_params_per_layer() +
                self.get_num_params_embedding() +
                self.get_num_params_last_layernorm())
        
    def get_weight_memory_per_layer(
        self,
        is_sharded: bool = False,
        ds_zero: DSZeRO = DSZeRO.NONE,
        return_breakdown: bool = False,
    ) -> Union[float, tuple]:
        """
        获取存储一个transformer层权重所需的内存大小(单位bytes) 对于一个transformer层的参数 tensor并行以及Deepspeed ZeRO stage 3会将存储时进行分片 
        参数:
            ds_zero (DSZeRO, optional): 使用哪个DeepSpeed ZeRO stage 默认是DSZeRO.NONE (disabled).
        返回值:
            Union[float, tuple]: 存储一个transformer层权重所需的内存大小(单位bytes)或者一个细分列表
        """
        if is_sharded and ds_zero == DSZeRO.STAGE_3:
            sharded_dp_size = self.parallelism_config.dp_size
            mlp_sharded_dp_size = self.parallelism_config.dp_size / self.parallelism_config.ep_size
        else:
            sharded_dp_size = 1
            mlp_sharded_dp_size = 1

        weight_memory_attn_per_layer = self.get_num_params_per_layer_attn(
        ) * self.dtype_config.weight_bits / BITS_PER_BYTE / self.parallelism_config.tp_size / sharded_dp_size

        weight_memory_mlp_per_layer = (
            self.get_num_params_per_layer_mlp() / self.parallelism_config.ep_size +
            self.get_num_params_per_layer_router()
        ) * self.dtype_config.weight_bits / BITS_PER_BYTE / self.parallelism_config.tp_size / mlp_sharded_dp_size

        weight_memory_layernorm_per_layer = self.get_num_params_per_layer_layernorm(
        ) * self.dtype_config.weight_bits / BITS_PER_BYTE / sharded_dp_size / self.parallelism_config.sp_size ###

        weight_memory_per_layer = weight_memory_attn_per_layer + weight_memory_mlp_per_layer + weight_memory_layernorm_per_layer

        if return_breakdown:
            return weight_memory_per_layer, weight_memory_attn_per_layer, weight_memory_mlp_per_layer, weight_memory_layernorm_per_layer
        return weight_memory_per_layer
    
    def get_weight_memory_last_layernorm(self, ds_zero: DSZeRO = DSZeRO.NONE):
        '''
        最后一层LN的内存占用
        参数: 
            ds_zero (DSZeRO, optional): 使用哪个DeepSpeed ZeRO stage 默认是DSZeRO.NONE (disabled).
        返回值:
            weight_memory_last_layernorm (int): 最后一层LN的权重内存占用(单位bytes)
        '''
        weight_memory_last_layernorm = self.get_num_params_last_layernorm(
        ) * self.dtype_config.weight_bits / BITS_PER_BYTE / self.parallelism_config.sp_size  ###
        if ds_zero == DSZeRO.STAGE_3:
            weight_memory_last_layernorm /= self.parallelism_config.dp_size
        return weight_memory_last_layernorm
    
    def get_memory_optimizer_state_and_gradient_embedding(
        self,
        master_weights_dtype_bytes: int = BYTES_FP32,
        other_op_bytes: int = None,
        ds_zero: DSZeRO = DSZeRO.NONE,
    ) -> tuple:
        '''
        考虑并行策略 获取embedding层的优化器和梯度内存开销
        参数：
            master_weights_dtype_bytes (int): 主权重的数据类型 默认BYTES_FP32
            other_op_bytes (int): 在优化器状态中的数据类型 默认为None 假设使用Adam优化器
            ds_zero (DSZeRO, optional): 使用哪个DeepSpeed ZeRO stage 默认是DSZeRO.NONE (disabled).
        返回值:
            embedding层的优化器和梯度内存
        '''
        if other_op_bytes is None:
            op_bytes_per_params = BYTES_FP32 + 2 * BYTES_FP32
        else:
            op_bytes_per_params = (other_op_bytes + master_weights_dtype_bytes)

        memory_optimizer_state_embedding = op_bytes_per_params * self.get_num_params_embedding() / self.parallelism_config.tp_size
        if ds_zero >= DSZeRO.STAGE_1:
            memory_optimizer_state_embedding /= self.parallelism_config.dp_size

        memory_gradient_embedding = master_weights_dtype_bytes * self.get_num_params_embedding() / self.parallelism_config.tp_size
        if ds_zero >= DSZeRO.STAGE_2:
            memory_gradient_embedding /= self.parallelism_config.dp_size

        return memory_optimizer_state_embedding, memory_gradient_embedding
    
    def get_memory_optimizer_state_and_gradient_per_layer(
        self,
        master_weights_dtype_bytes: int = BYTES_FP32,
        other_op_bytes: int = None,
        ds_zero: DSZeRO = DSZeRO.NONE,
    ) -> tuple:
        """
        获取存储一个transformer层梯度和优化器状态的内存开销(in bytes)
        优化器状态包括主权重和其他状态如动量
        梯度在使用前需要与优化器状态中的主权重数据类型一致 所以这里直接将其数据类型设置为与主权重相同
        参数:
            master_weights_dtype_bytes (int): 主权重的数据类型 默认BYTES_FP32
            other_op_bytes (int): 在优化器状态中的数据类型 默认为None 假设使用Adam优化器
            ds_zero (DSZeRO, optional): 使用哪个DeepSpeed ZeRO stage 默认是DSZeRO.NONE (disabled).
        返回值:
            tuple: 一个transformer层优化器状态和梯度内存占用(单位bytes)
        """

        if ds_zero >= DSZeRO.STAGE_1:
            sharded_dp_size = self.parallelism_config.dp_size
            mlp_sharded_dp_size = self.parallelism_config.dp_size / self.parallelism_config.ep_size
        else:
            sharded_dp_size = 1
            mlp_sharded_dp_size = 1

        if other_op_bytes is None:
            op_bytes_per_params = BYTES_FP32 + 2 * BYTES_FP32
        else:
            op_bytes_per_params = (other_op_bytes + master_weights_dtype_bytes) # 优化器状态和主权重的加和
        
        memory_optimizer_state_mlp_per_layer = op_bytes_per_params * self.get_num_params_per_layer_mlp(
        ) / self.parallelism_config.ep_size / self.parallelism_config.tp_size / mlp_sharded_dp_size

        ### ln会被sp切分
        memory_optimizer_state_others_per_layer = op_bytes_per_params * (
            ((self.get_num_params_per_layer_attn() +
             +self.get_num_params_per_layer_router())
        ) / self.parallelism_config.tp_size + 
            self.get_num_params_per_layer_layernorm() / self.parallelism_config.sp_size)/ sharded_dp_size
        ###

        memory_optimizer_state_per_layer = memory_optimizer_state_mlp_per_layer + memory_optimizer_state_others_per_layer

        if ds_zero >= DSZeRO.STAGE_2:
            sharded_dp_size = self.parallelism_config.dp_size
            mlp_sharded_dp_size = self.parallelism_config.dp_size / self.parallelism_config.ep_size
        else:
            sharded_dp_size = 1
            mlp_sharded_dp_size = 1

        memory_gradient_mlp_per_layer = 1 * self.get_num_params_per_layer_mlp(
        ) * master_weights_dtype_bytes / self.parallelism_config.ep_size / self.parallelism_config.tp_size / mlp_sharded_dp_size

        ### 梯度的数据类型与主权重一致
        memory_gradient_others_per_layer = master_weights_dtype_bytes * (
            ((self.get_num_params_per_layer_attn() +
             +self.get_num_params_per_layer_router())
        ) / self.parallelism_config.tp_size + 
            self.get_num_params_per_layer_layernorm() / self.parallelism_config.sp_size) / sharded_dp_size

        memory_gradient_per_layer = memory_gradient_mlp_per_layer + memory_gradient_others_per_layer

        return memory_optimizer_state_per_layer, memory_gradient_per_layer
    
    def get_memory_optimizer_state_and_gradient_last_layernorm(
        self,
        master_weights_dtype_bytes: int = BYTES_FP32,
        other_op_bytes: int = None,
        ds_zero: DSZeRO = DSZeRO.NONE,
    ) -> tuple:
        '''
        最后一层LN的优化器状态和梯度内存
        参数：
            master_weights_dtype_bytes (int): 主权重的数据类型 默认BYTES_FP32
            other_op_bytes (int): 在优化器状态中的数据类型 默认为None 假设使用Adam优化器
            ds_zero (DSZeRO, optional): 使用哪个DeepSpeed ZeRO stage 默认是DSZeRO.NONE (disabled).
        返回值:
            (tuple): 最后一个LN的优化器状态和梯度内存
        '''
        if other_op_bytes is None:
            op_bytes_per_params = BYTES_FP32 + 2 * BYTES_FP32  # adam optimizer
        else:
            op_bytes_per_params = (other_op_bytes + master_weights_dtype_bytes)

        memory_optimizer_state_last_layernorm = op_bytes_per_params * self.get_num_params_last_layernorm(
        ) / self.parallelism_config.tp_size
        if ds_zero >= DSZeRO.STAGE_1:
            memory_optimizer_state_last_layernorm /= self.parallelism_config.dp_size

        memory_gradient_last_layernorm = master_weights_dtype_bytes * self.get_num_params_last_layernorm(
        ) / self.parallelism_config.tp_size
        if ds_zero >= DSZeRO.STAGE_2:
            memory_gradient_last_layernorm /= self.parallelism_config.dp_size

        return memory_optimizer_state_last_layernorm, memory_gradient_last_layernorm
    
    def get_memory_embedding(
        self,
        ds_zero: DSZeRO = DSZeRO.NONE,
        is_sharded: bool = True,
    ):
        """
        获取embedding层的内存占用量
        参数：
            ds_zero (DSZeRO, optional): 使用哪个DeepSpeed ZeRO stage 默认是DSZeRO.NONE (disabled).
        返回值:
            float: 存储embedding需要的内存(单位bytes)
        """
        dtype_bytes = self.dtype_config.embedding_bits / BITS_PER_BYTE
        memory_embedding = (self.get_num_params_embedding() / self.parallelism_config.tp_size) * dtype_bytes
        if not is_sharded:
            return memory_embedding
        if ds_zero == DSZeRO.STAGE_3:
            memory_embedding /= self.parallelism_config.dp_size
        return memory_embedding
    
    def get_activation_memory_per_layer_attn(
        self,
        batch_size: int,
        seq_len: int,
        is_inference: bool = True,
        flash_attn: bool = True,
        softmax_dropout: bool = False,
        attn_dropout: bool = True,
        activation_recomputation:
        ActivationRecomputation = ActivationRecomputation.NONE,
    ):
        """
        获取每层transformer中attention层激活内存占用量
        激活值包括输入、Q/K/V/O、QK^T、softmax、与V的softmax dropout attention
        参数:
            batch_size (int): batch size
            seq_len (int): sequence length
            is_inference (bool, optional): 是否为推理模式
            flash_attn (bool, optional): 是否使用flash attention
            softmax_dropout (bool, optional): 是否使用softmax dropout
            attn_dropout (bool, optional): 是否使用attention dropout
            activation_recomputation (ActivationRecomputation, optional): 是否使用激活重计算
        返回值:
            float: 每层transformer中attention层激活内存占用量(单位bytes)
        """
        tp_size = self.parallelism_config.tp_size
        sp_size = self.parallelism_config.sp_size
        hidden_dim = self.model_config.hidden_dim
        n_head = self.model_config.n_head
        bytes_per_activation = (self.dtype_config.activation_bits / BITS_PER_BYTE)

        if is_inference:
            assert activation_recomputation == ActivationRecomputation.NONE, f'Inference does not need activation recomputation, but got activation_recomputation = {activation_recomputation}'

        if activation_recomputation >= ActivationRecomputation.NORM_ATTN_NORM:
            return 0
        elif activation_recomputation == ActivationRecomputation.ATTN:
            return seq_len * batch_size * hidden_dim * bytes_per_activation #/ sp_size  ### 【修改】 去掉了sp_size

        if activation_recomputation == ActivationRecomputation.ATTN_COMPUTE:
            memory_attn_compute = 0
        elif activation_recomputation == activation_recomputation.NONE:
            if flash_attn:
                memory_attn_compute = 2 * (2 * seq_len * batch_size * hidden_dim + 4 * n_head * seq_len * batch_size) * bytes_per_activation / tp_size ### 这里需要修改系数
            else:
                memory_attn_compute = 2 * n_head * seq_len**2 * batch_size * bytes_per_activation / tp_size    # 4bs^2a
                # attn_matrix before and after softmax
            if softmax_dropout:
                # dropout mask only requires a single byte per element
                memory_attn_compute += n_head * seq_len**2 * batch_size / tp_size                              # bs^2a
                # attn_matrix after dropout
        else:
            raise ValueError(
                f'Invalid activation_recomputation: {activation_recomputation}'
            )

        if is_inference:
            return max(
                3 * bytes_per_activation * seq_len * batch_size * hidden_dim /
                tp_size, memory_attn_compute)

        activation_memory_per_layer_attn = (seq_len * batch_size * hidden_dim + 4 * seq_len * batch_size * hidden_dim / tp_size) * bytes_per_activation + memory_attn_compute   # input , Q K V O    10bsh

        if attn_dropout:
            activation_memory_per_layer_attn += seq_len * batch_size * hidden_dim / sp_size                  # bsh

        return activation_memory_per_layer_attn
    
    def get_activation_memory_per_layer_mlp(
        self,
        batch_size: int,
        seq_len: int,
        is_inference: bool = True,
        activation_recomputation:
        ActivationRecomputation = ActivationRecomputation.NONE,
        mlp_activation_quant_bits: int = None,
        mlp_1linear_quant_bits: int = None,
        mlp_gelu_input_quant_bits: int = None,
        mlp_2linear_quant_bits: int = None,
        recompute_gelu: bool = False,   # 这块做了
        gated_linear_units: bool = False,
        with_dropout: bool = False,  ### 【修改】原来是False
    ):
        """
        获取每层transformer中mlp层的激活内存
        mlp层激活值包括两个线性层的输入
        参数:
            batch_size (int): batch size
            seq_len (int): sequence length
            is_inference (bool, optional): 是否为推理模式
            activation_recomputation (ActivationRecomputation, optional): 是否使用激活重计算
            mlp_activation_quant_bits (int, optional): mlp激活量化位数
            mlp_1linear_quant_bits (int, optional): mlp第一层线性量化位数
            mlp_gelu_input_quant_bits (int, optional): gelu输入量化位数
            mlp_2linear_quant_bits (int, optional): mlp第二层线性量化位数
            recompute_gelu2 (bool, optional): 是否使用gelu重计算
            gated_linear_units (bool, optional): 是否使用gated linear units
            with_dropout (bool = False): 是否使用dropout
        返回值:
            float: 每层transformer中mlp层的激活内存(单位bytes)
        """
        tp_size = self.parallelism_config.tp_size
        sp_size = self.parallelism_config.sp_size
        ep_size = self.parallelism_config.ep_size
        hidden_dim = self.model_config.hidden_dim
        bytes_per_activation = (self.dtype_config.activation_bits /
                                BITS_PER_BYTE)

        if is_inference:
            assert activation_recomputation == ActivationRecomputation.NONE, f'Inference does not need activation recomputation, but got activation_recomputation = {activation_recomputation}'

        if activation_recomputation == ActivationRecomputation.FULL:
            return 0

        bytes_per_1linear_input = bytes_per_gelu_input = bytes_per_2linear_input = bytes_per_activation
        if mlp_1linear_quant_bits:
            bytes_per_1linear_input = mlp_1linear_quant_bits / BITS_PER_BYTE
        if mlp_gelu_input_quant_bits:
            bytes_per_gelu_input = mlp_gelu_input_quant_bits / BITS_PER_BYTE
        if mlp_2linear_quant_bits:
            bytes_per_2linear_input = mlp_2linear_quant_bits / BITS_PER_BYTE
        if mlp_activation_quant_bits:
            bytes_per_1linear_input = mlp_activation_quant_bits / BITS_PER_BYTE
            bytes_per_gelu_input = mlp_activation_quant_bits / BITS_PER_BYTE
            bytes_per_2linear_input = mlp_activation_quant_bits / BITS_PER_BYTE

        if is_inference:
            return max(
                bytes_per_1linear_input,
                bytes_per_gelu_input * self.model_config.expansion_ratio
            ) * seq_len * batch_size * hidden_dim * self.model_config.moe_top_k / tp_size
        # 输入激活都是只与sp有关
        if self.model_config.moe_num_experts > 1:
            # MoE MLP
            # The router stores inputs batch size * seq len * feature dim
            # The softmax stores inputs batch size * seq len * feature dim
            ### 【修改】 去掉了 / sp_size
            activation_memory_per_layer_mlp = 2 * bytes_per_activation * seq_len * batch_size * hidden_dim #/ sp_size

            # The WeightedSum of the all2all+WeightedSum stores ftk + batch size * seq len * expert count elements
            activation_memory_per_layer_mlp += bytes_per_1linear_input * seq_len * batch_size * hidden_dim * self.model_config.moe_top_k
            activation_memory_per_layer_mlp += bytes_per_1linear_input * batch_size * seq_len * self.model_config.moe_top_k

            # W1 stores on average TopK * batch size * seq len * feature dim
            activation_memory_per_layer_mlp += bytes_per_1linear_input * seq_len * batch_size * hidden_dim * self.model_config.moe_top_k #/ sp_size
        else:
            # dense MLP
            activation_memory_per_layer_mlp = bytes_per_activation * seq_len * batch_size * hidden_dim #/ sp_size                    # input1 2bsh
        
        # https://github.com/huggingface/transformers/blob/0531d7513b617f7c5f8b5f333985c63f0edd5fe2/src/transformers/models/llama/modeling_llama.py
        if recompute_gelu:
            activation_memory_per_layer_mlp += (2 if gated_linear_units else 1) * bytes_per_gelu_input * self.model_config.expansion_ratio * seq_len * batch_size * hidden_dim * self.model_config.moe_top_k / tp_size
        else:
            activation_memory_per_layer_mlp += (bytes_per_2linear_input + (2 if gated_linear_units else 1) * bytes_per_gelu_input) * self.model_config.expansion_ratio * seq_len * batch_size * hidden_dim * self.model_config.moe_top_k / tp_size      # GELU and input2 2 * 8bsh
        # dropout mask only requires a single byte per element
        if with_dropout:                    # dropout bsh 
            drop_out_mask = seq_len * batch_size * hidden_dim / sp_size
            activation_memory_per_layer_mlp += drop_out_mask

        return activation_memory_per_layer_mlp
    
    def get_activation_memory_per_layernorm(
        self,
        batch_size: int,
        seq_len: int,
        dtype_bytes: int = BYTES_FP32,
    ):
        """
        获取每个LN层的激活内存
        参数:
            batch_size (int): batch size
            seq_len (int): sequence 长度
            dtype_bytes (int, optional): LN激活值类型。默认为BYTES_FP32 至少FP16以维持准确性
        返回值:
            float: 单个LN层激活内存(单位bytes)
        """
        return (seq_len * batch_size * self.model_config.hidden_dim / self.parallelism_config.sp_size) * dtype_bytes              # 2bsh
        
    def get_activation_memory_input_embedding(self, batch_size: int, seq_len: int):
        """
        输入embedding的激活内存
        参数:
            batch_size (int): batch size
            seq_len (int): sequence 长度
        返回值:
            float: 输入embedding的激活内存(单位bytes)
        """
        return self.model_config.hidden_dim * batch_size * seq_len * self.dtype_config.activation_bits / BITS_PER_BYTE / self.parallelism_config.tp_size
    
    def get_activation_memory_output_embedding(self, batch_size: int, seq_len: int):
        """
        输出embedding的激活内存
        参数:
            batch_size (int): batch size
            seq_len (int): sequence 长度
        返回值:
            float: 输出embedding的激活内存(单位bytes)
        """
        return self.model_config.hidden_dim * batch_size * seq_len * self.dtype_config.activation_bits / BITS_PER_BYTE / self.parallelism_config.tp_size
    
    def get_loss_bwd_memory(self, batch_size: int, seq_len: int):
        """
        获取损失函数反向传播过程中所需的临时内存
        该方法实际上是调用get_activation_memory_output_embedding方法来计算内存需求
        参数:
            batch_size (int): batch size
            seq_len (int): sequence 长度
        返回:
            float: loss反向传播过程中所需的临时内存量(单位bytes)
        """
        return self.get_activation_memory_output_embedding(batch_size, seq_len)
    
    def get_activation_memory_per_layer(
        self,
        batch_size: int,
        seq_len: int,
        is_inference: bool = True,
        activation_recomputation:
        ActivationRecomputation = ActivationRecomputation.NONE,
        layernorm_dtype_bytes: int = BYTES_FP32,
        flash_attn: bool = True,
        softmax_dropout: bool = False,
        mlp_activation_quant_bits: int = None,
        mlp_1linear_quant_bits: int = None,
        mlp_gelu_input_quant_bits: int = None,
        mlp_2linear_quant_bits: int = None,
        mlp_recompute_gelu: bool = False,
        return_breakdown: bool = False,
    ) -> Union[float, tuple]:
        """
        获取一个transformer层所需要存储的激活内存
        参数:
            batch_size (int): batch size
            seq_len (int): sequence 长度
            is_inference (bool, optional): 是否为推理模式。默认为True。
            activation_recomputation (ActivationRecomputation, optional): 激活重计算策略。默认为ActivationRecomputation.NONE。
            layernorm_dtype_bytes (int, optional): layernorm激活值类型。默认为BYTES_FP32。
            flash_attn (bool, optional): 是否使用Flash Attention。默认为True。
            softmax_dropout (bool, optional): 是否在softmax后应用dropout。默认为False。
            mlp_activation_quant_bits (int, optional): MLP激活值量化位数。
            mlp_1linear_quant_bits (int, optional): MLP第一层线性层量化位数。
            mlp_gelu_input_quant_bits (int, optional): MLP gelu输入量化
            mlp_2linear_quant_bits (int, optional): MLP第二层线性层量化位数。
            mlp_recompute_gelu (bool, optional): 是否在gelu前应用重计算。默认为False。
            return_breakdown (bool, optional): 是否返回各个激活内存的 breakdown。默认为False。
        返回值:
            Union[float, tuple]: 单个transformer层所需要存储的激活内存(单位bytes)，或者返回各个激活内存的 breakdown
        """
        if is_inference:
            assert activation_recomputation == ActivationRecomputation.NONE, f'Inference does not need activation recomputation, but got activation_recomputation = {activation_recomputation}'
        if activation_recomputation == ActivationRecomputation.FULL:
            activation_memory_per_layer = (seq_len * batch_size *
                                           self.model_config.hidden_dim *
                                           self.dtype_config.activation_bits /
                                           BITS_PER_BYTE /
                                           self.parallelism_config.tp_size)
            if return_breakdown:
                return activation_memory_per_layer, 0, 0, activation_memory_per_layer
            else:
                return activation_memory_per_layer
        activation_memory_per_layer_attn = (
            self.get_activation_memory_per_layer_attn(
                batch_size,
                seq_len,
                is_inference,
                flash_attn=flash_attn,
                softmax_dropout=softmax_dropout,
                activation_recomputation=activation_recomputation))
        activation_memory_per_layer_mlp = (
            self.get_activation_memory_per_layer_mlp(
                batch_size,
                seq_len,
                is_inference,
                activation_recomputation,
                mlp_activation_quant_bits=mlp_activation_quant_bits,
                mlp_1linear_quant_bits=mlp_1linear_quant_bits,
                mlp_gelu_input_quant_bits=mlp_gelu_input_quant_bits,
                mlp_2linear_quant_bits=mlp_2linear_quant_bits,
                recompute_gelu=mlp_recompute_gelu,
                gated_linear_units=self.model_config.mlp_gated_linear_units,
            ))
        activation_memory_per_layernorm = self.get_activation_memory_per_layernorm(
            batch_size,
            seq_len,
            layernorm_dtype_bytes,
        )
        if is_inference:
            activation_memory_per_layer = max(activation_memory_per_layer_attn,
                                              activation_memory_per_layer_mlp,
                                              activation_memory_per_layernorm)
        else:
            if activation_recomputation == ActivationRecomputation.NORM_ATTN_NORM:
                activation_memory_layernorm = activation_memory_per_layernorm
            else:
                activation_memory_layernorm = 2 * activation_memory_per_layernorm
            activation_memory_per_layer = (activation_memory_per_layer_attn +
                                           activation_memory_per_layer_mlp +
                                           activation_memory_layernorm)
        if return_breakdown:
            return activation_memory_per_layer, activation_memory_per_layer_attn, activation_memory_per_layer_mlp, activation_memory_layernorm
        return activation_memory_per_layer
    
    def get_memory_kv_cache_per_layer(
        self,
        batch_size: int,
        seq_len: int,
        kv_cache_dtype_bytes: int = None,
    ):
        """
        获取在inference模式下，单个transformer层所需要存储的key-value缓存[kv cache](单位bytes)
        参数:
            batch_size (int): batch size
            seq_len (int): sequence 长度
            kv_cache_dtype_bytes (int, optional): kv cache数据类型。默认为BYTES_FP16。
        返回值:
            float: 单个transformer层所需要存储的kv cache(单位bytes)
        """
        if kv_cache_dtype_bytes is None:
            kv_cache_dtype_bytes = (self.dtype_config.activation_bits /
                                    BITS_PER_BYTE)
        head_dim = self.model_config.hidden_dim / self.model_config.n_head
        num_heads_per_gpu = max(
            self.model_config.num_key_value_heads /
            self.parallelism_config.tp_size,
            1)  # At least on attention head on each tensor-parallel GPU

        memory_kv_cache_per_layer = (2 * batch_size * seq_len * head_dim *
                                     num_heads_per_gpu) * kv_cache_dtype_bytes

        return memory_kv_cache_per_layer
    
    def get_num_flops_fwd_per_layer_attn(self, batch_size: int,
                                         seq_len: int):
        """
        获取前向过程中一个transformer层中attention的flops(浮点数计算次数)
        参数:
            batch_size (int): batch size
            seq_len (int): sequence 长度
        返回值:
            int: 前向过程中一个transformer层中attention的flops
        """
        if self.use_bias:
            return (2 * (2 * batch_size * seq_len * self.model_config.hidden_dim**2 + batch_size * seq_len * self.model_config.hidden_dim) + 
                    2 * (2 * batch_size * seq_len * self.model_config.hidden_dim**2 / self.model_config.num_key_value_groups + batch_size * seq_len * self.model_config.hidden_dim / self.model_config.num_key_value_groups) + 
                    2 * batch_size * seq_len**2 * self.model_config.hidden_dim + 
                    2 * batch_size * seq_len * self.model_config.hidden_dim**2
                    )
        else:
            return (4 * batch_size * seq_len * self.model_config.hidden_dim**2 +                          # q o
                    4 * batch_size * seq_len * self.model_config.hidden_dim**2 / self.model_config.num_key_value_groups +   # k v
                    2 * batch_size * seq_len**2 * self.model_config.hidden_dim +                          # (QK)V
                    2 * batch_size * seq_len * self.model_config.hidden_dim**2                            # QK
                    )                                                                                     # 矩阵相乘会有n个乘法和n个加法，所以是double
    
    def get_num_flops_fwd_per_layer_mlp(self, batch_size: int,
                                        seq_len: int):
        """
        获取前向过程中一个transformer层中mlp的flops
        参数:
            batch_size (int): batch size
            seq_len (int): sequence 长度
        返回值:
            int: 前向过程中一个transformer层中mlp的flops
        """
        if self.use_bias:
            return ((3 if self.model_config.mlp_gated_linear_units else 2) * (batch_size * seq_len * self.model_config.hidden_dim**2 * self.model_config.expansion_ratio + batch_size * seq_len * self.model_config.expansion_ratio * self.model_config.hidden_dim)+
                    (3 if self.model_config.mlp_gated_linear_units else 2) * (batch_size * seq_len * self.model_config.hidden_dim**2 * self.model_config.expansion_ratio + batch_size * seq_len * self.model_config.hidden_dim))
        else:
            return (
            6 if self.model_config.mlp_gated_linear_units else 4
        ) * batch_size * seq_len * self.model_config.hidden_dim**2 * self.model_config.expansion_ratio
        
        
    def get_num_flops_fwd_per_layer(
        self,
        batch_size: int,
        seq_len: int,
    ):
        """
        获取前向过程中每一个transformer层的总flops
        参数:
            batch_size (int): batch size
            seq_len (int): sequence 长度
        返回值:
            int: 前向过程中每一个transformer层的总flops
        """
        return self.get_num_flops_fwd_per_layer_attn(
            batch_size, seq_len) + self.get_num_flops_fwd_per_layer_mlp(
                batch_size, seq_len)
            
    def get_num_flops_fwd_total(self, batch_size: int, seq_len: int):
        """
        获取模型前向过程中的总flops
        参数:
            batch_size (int): batch size
            seq_len (int): sequence 长度
        返回值:
            int: 模型前向过程中的总flops
        """
        hidden_dim = self.model_config.hidden_dim
        vocab_size = self.model_config.vocab_size
        num_layers = self.model_config.num_layers

        num_flops_logit_layer = (2 * batch_size * seq_len * hidden_dim *
                                 vocab_size)  # logit compute

        num_flops_fwd_total = (
            self.get_num_flops_fwd_per_layer(batch_size, seq_len) * num_layers + num_flops_logit_layer)

        # validate only when using Multi Head Attention (MHA)
        if self.model_config.num_key_value_groups == 1:
            assert within_range(
                num_flops_fwd_total,
                (24 * batch_size * num_layers * seq_len * hidden_dim**2 *
                 (1 + seq_len / (6 * hidden_dim) + vocab_size /
                  (12 * num_layers * hidden_dim))),
                TOLERANCE,
            )
        return num_flops_fwd_total
    
    def get_num_flops_bwd_total(self, batch_size: int, seq_len: int):
        """
        获取模型后向过程中的总flops(估计为前向过程中的两倍)
        参数:
            batch_size (int): batch size
            seq_len (int): sequence 长度
        返回值:
            int: 模型后向过程中的总flops
        """
        return 2 * self.get_num_flops_fwd_total(batch_size, seq_len)
    
    def get_num_flops_total_attn_compute(self, batch_size: int,
                                         seq_len: int):
        """
        获取重计算时attn的总flops
        参数:
            batch_size (int): batch size
            seq_len (int): sequence 长度
        返回值:
            int: 重计算时attn的总flops
        """
        return (4 * batch_size * seq_len**2 *
                self.model_config.hidden_dim) * self.model_config.num_layers
        
    def get_latency_fwd_per_layer_attn(
        self,
        batch_size: int,
        seq_len: int,
        is_inference: bool = True,
        activation_recomputation:
        ActivationRecomputation = ActivationRecomputation.NONE,
    ):
        """
        获取前向过程中一个transformer层的时延 (包括计算和内存时延 假设计算和内存时延是完全重叠的 取二者中的最大值)
        参数:
            batch_size (int): batch size
            seq_len (int): sequence 长度
            is_inference (bool, optional): 是否为推理过程 默认为True
            activation_recomputation (ActivationRecomputation, optional): 重计算策略 默认为ActivationRecomputation.NONE.
        返回值:
            float: 前向过程中一个transformer层的时延(单位 秒)
        """
        tp_size = self.parallelism_config.tp_size

        compute_latency = (
            self.get_num_flops_fwd_per_layer_attn(batch_size, seq_len) /
            tp_size / (self.get_TFLOPS_per_gpu() * 10**12))                                        

        weight_memory = (self.get_num_params_per_layer_attn() *
                         self.dtype_config.weight_bits / BITS_PER_BYTE)
        weight_memory_latency = (weight_memory / tp_size /
                                 (self.get_gpu_hbm_bandwidth() * 10**9))                           

        activation_memory = self.get_activation_memory_per_layer_attn(
            batch_size, seq_len, is_inference, activation_recomputation)
        activation_memory_latency = activation_memory / (
            self.get_gpu_hbm_bandwidth() * 10**9)                                                      
        memory_latency = weight_memory_latency + activation_memory_latency                         # 内存延时包括了权重和激活值与内存的交互延时

        return max(compute_latency, memory_latency)
    
    def get_latency_fwd_per_layer_mlp_moe_alltoall(self, batch_size: int,
                                                   seq_len: int):
        """
        获取前向过程中每一个transformer层中mlp中moe的alltoall的时延
        参数:
            batch_size (int): batch size
            seq_len (int): sequence 长度
        返回值:
            float: 前向过程中每一个transformer层中mlp中moe的alltoall的时延(单位 秒)
        """
        data_nums = self.model_config.moe_top_k * batch_size * seq_len * self.model_config.hidden_dim
        data_bytes = data_nums * self.dtype_config.activation_bits / BITS_PER_BYTE
        # ep合并在megatron的dp中
        latency = data_bytes / (
            (self.get_intra_node_bandwidth() if self.parallelism_config.ep_size * self.parallelism_config.tp_size
             <= NUM_GPUS_PER_NODE else self.get_inter_node_bandwidth()) * 10**9)                                    
        return latency
    
    def get_latency_fwd_per_layer_mlp(
        self,
        batch_size: int,
        seq_len: int,
        is_inference: bool = True,
        activation_recomputation:
        ActivationRecomputation = ActivationRecomputation.NONE,
    ):
        """
        获取前向过程中每一个transformer层中mlp模块的时延
        参数:
            batch_size (int): batch size
            seq_len (int): sequence 长度
            is_inference (bool, optional): 是否为推理过程 默认为True
            activation_recomputation (ActivationRecomputation, optional): 重计算策略 默认为ActivationRecomputation.NONE.
        返回值:
            float: 前向过程中每一个transformer层中mlp模块的时延(单位 秒)
        """
        tp_size = self.parallelism_config.tp_size

        compute_latency = (
            self.get_num_flops_fwd_per_layer_mlp(batch_size, seq_len) /
            tp_size / (self.get_TFLOPS_per_gpu() * 10**12))

        weight_memory = (self.get_num_params_per_layer_mlp() /
                         self.parallelism_config.ep_size *
                         self.dtype_config.weight_bits / BITS_PER_BYTE)
        weight_memory_latency = (weight_memory / tp_size /
                                 (self.get_gpu_hbm_bandwidth() * 10**9))

        activation_memory = self.get_activation_memory_per_layer_mlp(
            batch_size, seq_len, is_inference, activation_recomputation)
        activation_memory_latency = activation_memory / (
            self.get_gpu_hbm_bandwidth() * 10**9)

        memory_latency = weight_memory_latency + activation_memory_latency

        # moe mlp have two alltoall operations
        alltoall_latency = 2 * self.get_latency_fwd_per_layer_mlp_moe_alltoall(
            batch_size,
            seq_len) if self.model_config.moe_num_experts > 1 else 0

        return max(compute_latency, memory_latency) + alltoall_latency
    
    def get_latency_recompute_gelu(
        self,
        batch_size: int,
        seq_len: int,
    ):
        """
        获取重计算GeLU的时延
        参数:
            batch_size (int): batch size
            seq_len (int): sequence 长度
        返回值：
            float: 重计算GeLU的时延(单位 秒)
        """
        compute_latency = 5 * batch_size * seq_len * self.model_config.hidden_dim * self.model_config.expansion_ratio / self.parallelism_config.tp_size / (self.get_TFLOPS_per_gpu() * 10**12)
        return compute_latency

    def get_latency_fwd_per_layernorm(
        self,
        batch_size: int,
        seq_len: int,
        dtype_bytes: int = BYTES_FP32,
    ):
        """
        获取前向过程中每一个LN层的时延
        参数:
            batch_size (int): batch size
            seq_len (int): sequence 长度
            dtype_bytes (int, optional): LN激活的数据类型。默认值: BYTES_FP32
        返回值：
            float: 前向过程中每一个LN层的时延(单位 秒)
        """
        sp_size = self.parallelism_config.sp_size
        input_numel = seq_len * batch_size * self.model_config.hidden_dim / sp_size             
        compute_latency = input_numel * 5 / (self.get_TFLOPS_per_gpu() *
                                             10**12)
        activation_memory = self.get_activation_memory_per_layernorm(
            batch_size,
            seq_len,
            dtype_bytes
        )  # 这里体现了sp并行
        activation_memory_latency = activation_memory / (
            self.get_gpu_hbm_bandwidth() * 10**9)
        return max(compute_latency, activation_memory_latency)
    
    def get_latency_fwd_per_tp_comm(self, batch_size: int, seq_len: int,
                                    dtype_bytes: int):
        """
        获取前向过程中一个transformer层中张量并行一个allreduce通信时延 假设使用ring allreduce的方法 并且张量并行小于节点内GPU数
        参数:
            batch_size (int): batch size
            seq_len (int): sequence 长度
            dtype_bytes (int, optional): 数据类型
        返回值：
            float: 前向过程中一个transformer层中张量并行一个allreduce通信时延(单位 秒)
        """
        tp_size = self.parallelism_config.tp_size
        if tp_size == 1:
            return 0
        elems_per_all_reduce = (2 * batch_size * seq_len *
                                self.model_config.hidden_dim * (tp_size - 1) /
                                tp_size)
        latency_per_all_reduce = (
            elems_per_all_reduce * dtype_bytes /
            (self.get_intra_node_bandwidth() * 10**9))  

        return max(
            latency_per_all_reduce,
            self.gpu_config.intra_node_min_message_latency,          
        )
        
    def get_latency_fwd_inter_pipeline(self, batch_size: int, seq_len: int, dtype_bytes: int):
        """
        获取前向过程中pipeline之间的通信时延
        参数:
            batch_size (int): batch size
            seq_len (int): sequence 长度
            dtype_bytes (int, optional): 数据类型
        返回值：
            float: 前向过程中pipeline之间的通信时延(单位 秒)
        """
        pp_size = self.parallelism_config.pp_size
        dp_size = self.parallelism_config.dp_size
        tp_size = self.parallelism_config.tp_size
        rdp_size = self.parallelism_config.rdp_size
        elems_inter_pipeline = batch_size * seq_len * self.model_config.hidden_dim
        latency_p2p = elems_inter_pipeline * dtype_bytes / ((self.get_intra_node_bandwidth() if pp_size*dp_size*tp_size*rdp_size <=NUM_GPUS_PER_NODE else self.get_inter_node_bandwidth()) * 10**9)
        return latency_p2p
    
    def get_latency_rdp_allreduce_per_layer(self):
        """
        获取每一层transformer导致的rdp allreduce的时延(resharded data parallelism)
        返回值：
            latency_rdp_allreduce float: rdp allreduce的时延(单位 秒)
        """
        rdp_size = self.parallelism_config.rdp_size
        tp_size = self.parallelism_config.tp_size
        dp_size = self.parallelism_config.dp_size
        
        # total_params = self.get_num_params_total()
        comm_params = self.get_weight_memory_per_layer()
        def time_allgather(S, n, B):
            # https://github.com/NVIDIA/nccl-tests/blob/master/doc/PERFORMANCE.md#allgather
            return S * (n - 1) / (B * n)
        latency_dp_allreduce = time_allgather(
            comm_params, rdp_size,
            (self.get_intra_node_bandwidth()
             if rdp_size * dp_size * tp_size <= NUM_GPUS_PER_NODE else self.get_inter_node_bandwidth()) * 10**9)
        # rdp_size与tp_size的乘积小于等于NUM_GPUS_PER_NODE，就使用节点内带宽
        return latency_dp_allreduce
    
    def get_latency_rdp_allreduce_embedding(self):
        """
        获取每一层transformer导致的rdp allreduce的时延(resharded data parallelism)
        返回值：
            latency_rdp_allreduce float: rdp allreduce的时延(单位 秒)
        """
        rdp_size = self.parallelism_config.rdp_size
        tp_size = self.parallelism_config.tp_size
        dp_size = self.parallelism_config.dp_size
        
        # total_params = self.get_num_params_total()
        comm_params = self.get_memory_embedding(is_sharded=False)
        def time_allgather(S, n, B):
            # https://github.com/NVIDIA/nccl-tests/blob/master/doc/PERFORMANCE.md#allgather
            return S * (n - 1) / (B * n)
        latency_dp_allreduce = time_allgather(
            comm_params, rdp_size,
            (self.get_intra_node_bandwidth()
             if rdp_size * dp_size * tp_size <= NUM_GPUS_PER_NODE else self.get_inter_node_bandwidth()) * 10**9)
        # rdp_size与tp_size的乘积小于等于NUM_GPUS_PER_NODE，就使用节点内带宽
        return latency_dp_allreduce
    
    def get_latency_rdp_allreduce_lastnorm(self):
        """
        获取每一层transformer导致的rdp allreduce的时延(resharded data parallelism)
        返回值：
            latency_rdp_allreduce float: rdp allreduce的时延(单位 秒)
        """
        rdp_size = self.parallelism_config.rdp_size
        tp_size = self.parallelism_config.tp_size
        dp_size = self.parallelism_config.dp_size
        
        # total_params = self.get_num_params_total()
        comm_params = self.get_weight_memory_last_layernorm()
        def time_allgather(S, n, B):
            # https://github.com/NVIDIA/nccl-tests/blob/master/doc/PERFORMANCE.md#allgather
            return S * (n - 1) / (B * n)
        latency_dp_allreduce = time_allgather(
            comm_params, rdp_size,
            (self.get_intra_node_bandwidth()
             if rdp_size * dp_size * tp_size <= NUM_GPUS_PER_NODE else self.get_inter_node_bandwidth()) * 10**9)
        # rdp_size与tp_size的乘积小于等于NUM_GPUS_PER_NODE，就使用节点内带宽
        return latency_dp_allreduce

    def get_latency_fwd_per_layer_shared_dp_comm(self):
        """
        获取前向过程中每一层transformer导致的dp通信时延(使用deepspeed zero前向过程中也需要通信)
        返回值：
            latency_fwd_per_layer_shared_dp_comm (float): 前向过程中每一层transformer导致的dp通信时延(单位 秒)
        """
        dp_size = self.parallelism_config.dp_size 
        ep_size = self.parallelism_config.ep_size
        tp_size = self.parallelism_config.tp_size

        def time_allgather(S, n, B):
            # https://github.com/NVIDIA/nccl-tests/blob/master/doc/PERFORMANCE.md#allgather
            return S * (n - 1) / (B * n)

        params_bytes_mlp = self.get_num_params_per_layer_mlp(
        ) / ep_size * self.dtype_config.weight_bits / BITS_PER_BYTE
        params_bytes_non_mlp = (
            self.get_num_params_per_layer_attn() +
            self.get_num_params_per_layer_router() +
            self.get_num_params_per_layer_layernorm()     
        ) * self.dtype_config.weight_bits / BITS_PER_BYTE

        latency_allgather_params_mlp = time_allgather(
            params_bytes_mlp, dp_size / ep_size,
            (self.get_intra_node_bandwidth()
             if tp_size * ep_size <= 8 else self.get_inter_node_bandwidth()) * 10**9)

        latency_allgather_params_non_mlp = time_allgather(
            params_bytes_non_mlp, dp_size,
            (self.get_intra_node_bandwidth()
             if dp_size * tp_size <= 8 else self.get_inter_node_bandwidth()) * 10**9)

        latency_fwd_per_layer_shared_dp_comm = latency_allgather_params_mlp + latency_allgather_params_non_mlp

        return latency_fwd_per_layer_shared_dp_comm
    
    def get_latency_fwd_per_layer(
        self,
        batch_size: int,
        seq_len: int,
        is_inference: bool = True,
        activation_recomputation:
        ActivationRecomputation = ActivationRecomputation.NONE,
        layernorm_dtype_bytes: int = BYTES_FP32,
        ds_zero: DSZeRO = DSZeRO.NONE,
    ) -> tuple:
        """
        获取前向过程中每一层transformer的时延 包括attention模块、MLP模块、两个LN和两个allreduce通信时延的和
        参数:
            batch_size (int): batch size
            seq_len (int): sequence 长度
            is_inference (bool, optional): 是否为推理模式. 默认为True.
            activation_recomputation (ActivationRecomputation, optional): 是否使用激活重计算. 默认为ActivationRecomputation.NONE.
            layernorm_dtype_bytes (int, optional): layernorm数据类型. 默认为BYTES_FP32.
            ds_zero (DSZeRO, optional): 是否使用deepspeed zero. 默认为DSZeRO.NONE.
        返回值：
            tuple: 前向过程中每一层transformer的时延以及各部分的时延(单位 秒)
        """
        if ds_zero != ds_zero.NONE:
            assert not is_inference, "DeepSpeed ZeRO is only supported in training"

        latency_fwd_per_layer_attn = self.get_latency_fwd_per_layer_attn(
            batch_size, seq_len, is_inference, activation_recomputation)

        latency_fwd_per_layer_mlp = self.get_latency_fwd_per_layer_mlp(
            batch_size, seq_len, is_inference, activation_recomputation)

        latency_fwd_per_layernorm = self.get_latency_fwd_per_layernorm(
            batch_size,
            seq_len,
            layernorm_dtype_bytes,
        )

        # use mc2优化的是这里，只能优化掉attention部分，不能优化掉mlp部分
        latency_fwd_per_tp_comm = self.get_latency_fwd_per_tp_comm(
            batch_size,
            seq_len,
            self.dtype_config.activation_bits / BITS_PER_BYTE,
        )

        latency_fwd_per_layer_shared_dp_comm = self.get_latency_fwd_per_layer_shared_dp_comm()

        latency_per_layer = latency_fwd_per_layer_attn + latency_fwd_per_layer_mlp + 2 * latency_fwd_per_layernorm + (1 if self.use_mc2 else 2) * latency_fwd_per_tp_comm

        if ds_zero > DSZeRO.STAGE_1 and latency_fwd_per_layer_shared_dp_comm > latency_per_layer:
            logger.warning(f'allgather communication time to unshard model weight {round(latency_fwd_per_layer_shared_dp_comm*1000, 3)} ms is larger than compute {round(latency_per_layer*1000, 3)} ms, thus cannot be fully overlapped.')
        latency_per_layer = max(latency_per_layer, latency_fwd_per_layer_shared_dp_comm)

        breakdown_per_layer = {
            "attn": latency_fwd_per_layer_attn,
            "mlp": latency_fwd_per_layer_mlp,
            "layernorm": 2 * latency_fwd_per_layernorm,
            "tp_comm": 2 * latency_fwd_per_tp_comm,
            "sharded_dp_comm": latency_fwd_per_layer_shared_dp_comm  # 这个在最后计算dp时延的时候需要用到
        }

        return latency_per_layer, breakdown_per_layer
    
    def get_latency_fwd_input_embedding(
            self,
            batch_size: int,
            seq_len: int,
            dtype_bytes: int = BYTES_FP32):
        """
        获取输入embedding导致的时延
        参数:
            batch_size (int): batch size
            seq_len (int): sequence 长度
            dtype_bytes (int, optional): 数据类型
        返回值：
            float: 输入embedding导致的时延(单位 秒)
        """
        memory_latency = (self.model_config.vocab_size *
                          self.model_config.hidden_dim * dtype_bytes /
                          (self.get_gpu_hbm_bandwidth() * 10**9))
        comm_latency = self.get_latency_fwd_per_tp_comm(
            batch_size, seq_len, dtype_bytes)
        return memory_latency + comm_latency
    
    def get_latency_fwd_output_embedding_loss(self, batch_size: int,
                                              seq_len: int):
        """
        获取前向过程中输出embedding层以及计算loss的时延
        参数:
            batch_size (int): batch size
            seq_len (int): sequence 长度
        返回值：
            float: 前向过程中输出embedding层以及计算loss的时延(单位 秒)
        """
        compute_latency = (2 * seq_len * batch_size *
                           self.model_config.vocab_size *
                           self.model_config.hidden_dim /
                           self.parallelism_config.tp_size /
                           (self.get_TFLOPS_per_gpu() * 10**12))   
        return compute_latency
    
    def get_latency_weight_update(self, weight_grad_op_state_memory_per_gpu):
        """
        获取权重更新时延
        参数：
            weight_grad_op_state_memory_per_gpu : 每个gpu的权重梯度状态内存大小
        返回值:
            float : 权重更新时延
        """
        return weight_grad_op_state_memory_per_gpu / (
            self.get_gpu_hbm_bandwidth() * 10**9)
        
    def print_config(self, name="Training Configs") -> None:
        """
        打印配置
        参数：
            name (str): 配置名称
        """
        config_str = f"\n{name.center(PRINT_LINE_WIDTH, '-')}\n"
        config_str += f"{pformat(self.model_config)}\n"
        config_str += f"{pformat(self.gpu_config)}\n"
        config_str += f"{pformat(self.dtype_config)}\n"
        config_str += f"{pformat(self.parallelism_config)}\n"
        logger.info(config_str)
        
    def get_configs_desc(self) -> str:
        """
        获取配置信息
        """
        return f"{self.model_config.name}-{self.gpu_config.name}-{self.dtype_config.name}-tp{self.parallelism_config.tp_size}-pp{self.parallelism_config.pp_size}-dp{self.parallelism_config.dp_size}-sp{self.parallelism_config.sp_size}-fe{round(self.flops_efficiency, 2)}-ep{self.parallelism_config.ep_size}-hbme{round(self.hbm_memory_efficiency, 2)}"
    
    def get_readable_summary_dict(self,
                                  summary_dict: dict,
                                  title="Summary") -> str:
        """
        获取可读的摘要字典
        参数:
            summary_dict (dict)
            title (str, optional): 名称 默认为"Summary".
        """
        log_str = f"\n{title.center(PRINT_LINE_WIDTH, '-')}\n"
        for key, value in summary_dict.items():
            if "latency" in key:
                log_str += f"{key}: {_latency_to_string(value)}\n"
            elif "num_tokens" in key or "num_params" in key or "num_active_params" in key or "flops" in key:
                log_str += f"{key}: {_num_to_string(value, divisor=1000)}\n"
            elif "gpu_hours" == key:
                log_str += f"{key}: {int(value)}\n" if value else ""
            elif "memory" in key and "efficiency" not in key:
                log_str += f"{key}: {_num_to_string(value)}B\n"
            else:
                log_str += f"{key}: {value}\n"
        log_str += f"{'-' * PRINT_LINE_WIDTH}\n"
        return log_str
    
    def output_summary_dict(
        self,
        summary_dict: dict,
        output_dir: str,
        print_human_readable: bool = True,
        output_file_prefix: str = "",
        output_file_suffix: str = "",
    ):
        """
        输出汇总字典
        参数:
            summary_dict (dict): 汇总字典
            output_dir (str): 输出目录
            print_human_readable (bool, optional): 是否输出可读 默认为True.
            output_file_prefix (str, optional): 输出文件前缀默认为 "".
            output_file_suffix (str, optional): 输出文件后缀默认为 "".
        """
        file_name = output_file_prefix + self.get_configs_desc(
        ) + output_file_suffix + "-summary.json"

        if not os.path.exists(output_dir):
            try:
                os.makedirs(output_dir, exist_ok=True)
            except:
                exit()
        assert os.path.isdir(output_dir), f"{output_dir} is not a directory"
        with open(os.path.join(output_dir, file_name), "w") as f:
            json.dump(summary_dict, f, indent=4)
        if print_human_readable:
            log_str = self.get_readable_summary_dict(summary_dict)
            file_name = output_file_prefix + self.get_configs_desc(
            ) + output_file_suffix + "-summary-readable.txt"
            with open(os.path.join(output_dir, file_name), "w") as f:
                f.write(log_str)
                
    def config_batch_size_and_gradient_accumulation_steps(
        self,
        max_batch_size_per_gpu: int,    
        batch_size_per_gpu: int = None,
        gradient_accumulation_steps: int = None,
        global_batch_size: int = None,   
    ) -> tuple:
        
        """
        配置max_batch_size_per_gpu, batch_size_per_gpu, gradient_accumulation_steps 和 global_batch_size
        须满足 global_batch_size == batch_size_per_gpu * gradient_accumulation_steps * dp_size
        参数:
            max_batch_size_per_gpu (int): 避免GPU超内存(OOM)的最大batch sizet
            batch_size_per_gpu (int, optional): 每个GPU的batch size 默认为None.
            gradient_accumulation_steps (int, optional): 梯度累积步数 默认为None.
            global_batch_size (int, optional): global batch size (effective batch size) 默认为None.
        返回值:
            tuple: (batch_size_per_gpu, gradient_accumulation_steps, global_batch_size)
        """
        assert_msg = (f"note that global_batch_size == batch_size_per_gpu *"
                      f" gradient_accumulation_steps * dp_size")                       
        dp_size = self.parallelism_config.dp_size * self.parallelism_config.rdp_size   
        if (global_batch_size and batch_size_per_gpu
                and gradient_accumulation_steps):
            assert (global_batch_size == batch_size_per_gpu *
                    gradient_accumulation_steps * dp_size), assert_msg
        elif global_batch_size and batch_size_per_gpu:
            # gradient_accumulation_steps is None, the other two are not None
            gradient_accumulation_steps = global_batch_size // (
                batch_size_per_gpu * dp_size)
            if gradient_accumulation_steps == 0:
                return (-1, -1, -1)
            assert (global_batch_size % (batch_size_per_gpu * dp_size) == 0
                    and gradient_accumulation_steps > 0
                    ), "no valid gradient_accumulation_steps, {assert_msg}"
        elif global_batch_size and gradient_accumulation_steps:
            # batch_size_per_gpu is None, the other two are not None
            batch_size_per_gpu = global_batch_size // (
                gradient_accumulation_steps * dp_size)
            assert (global_batch_size %
                    (gradient_accumulation_steps * dp_size) == 0
                    and batch_size_per_gpu > 0
                    ), "no valid batch_size_per_gpu, {assert_msg}"
        elif batch_size_per_gpu and gradient_accumulation_steps or batch_size_per_gpu:
            # batch_size_per_gpu is not None
            if batch_size_per_gpu > max_batch_size_per_gpu:
                logger.warning(
                    f"batch_size_per_gpu {batch_size_per_gpu} must be <= max_batch_size_per_gpu {max_batch_size_per_gpu}, {assert_msg}"
                )
            if gradient_accumulation_steps is None:
                gradient_accumulation_steps = 1
            global_batch_size = (batch_size_per_gpu *
                                 gradient_accumulation_steps * dp_size)
        elif global_batch_size:
            # batch_size_per_gpu and gradient_accumulation_steps are None
            # print("before assert global batch size")
            assert (
                global_batch_size % dp_size == 0
            ), f"global_batch_size must be divisible by dp_size, {assert_msg}"

            if max_batch_size_per_gpu >= global_batch_size // dp_size:
                batch_size_per_gpu = global_batch_size // dp_size
                gradient_accumulation_steps = 1
            else:
                prod = global_batch_size // dp_size
                batch_size_per_gpu = next(d for d in range(
                    prod,
                    0,
                    -1,
                ) if prod % d == 0 and d <= max_batch_size_per_gpu)
                gradient_accumulation_steps = global_batch_size // (
                    batch_size_per_gpu * dp_size)
        else:
            # (global_batch_size and batch_size_per_gpu are None) or (all are None)
            batch_size_per_gpu = max_batch_size_per_gpu
            gradient_accumulation_steps = (1 if
                                           gradient_accumulation_steps is None
                                           else gradient_accumulation_steps)
            global_batch_size = (batch_size_per_gpu *
                                 gradient_accumulation_steps * dp_size)

        return (
            batch_size_per_gpu,
            gradient_accumulation_steps,
            global_batch_size,
        )
        
    def training(
        self,
        batch_size_per_gpu: int = None,
        gradient_accumulation_steps: int = None,
        global_batch_size: int = None,
        seq_len: int = None,
        total_num_tokens: int = None,
        activation_recomputation:
        ActivationRecomputation = ActivationRecomputation.NONE,
        ds_zero: DSZeRO = DSZeRO.NONE,
        layernorm_dtype_bytes: int = BYTES_FP32,
        master_weights_dtype_bytes: int = BYTES_FP32,
        other_op_bytes: int = None,                                # 优化器的数据类型
        flash_attn: bool = True,
        softmax_dropout: bool = False,
        mlp_activation_quant_bits: int = None,
        mlp_1linear_quant_bits: int = None,
        mlp_gelu_input_quant_bits: int = None,
        mlp_2linear_quant_bits: int = None,
        mlp_recompute_gelu: bool = False,
        output_dir: str = None,
        output_file_prefix: str = "",
        output_file_suffix: str = "",
        auto_adjust_split: bool = False
    ) -> dict:
        """Training analysis given the configs and inputs.
        根据配置和输入进行训练内存和时延分析
        Args:
            batch_size_per_gpu (int, optional): 每个GPU的batch size(micro batch size). 默认为None.
            gradient_accumulation_steps (int, optional): 梯度累积步数. 默认为None.
            global_batch_size (int, optional): 全局batch size 默认为None.
            seq_len (int, optional): 序列长度length. 默认为None.
            total_num_tokens (int, optional): 训练总token数. 默认为None.
            activation_recomputation (ActivationRecomputation, optional): 激活重计算策略. 默认为ActivationRecomputation.NONE.
            ds_zero (DSZeRO, optional): 使用的DeepSpeed ZeRO stage. 默认为DSZeRO.NONE (disabled).
            layernorm_dtype_bytes (int, optional): LN激活值的数据类型(bytes). 默认是BYTES_FP32.
            master_weights_dtype_bytes (int): 主权重的数据类型(bytes). 默认是BYTES_FP32.
            other_op_bytes (int, optional): 优化器权重的数据类型(bytes). 默认是None, 假设使用Adam优化器.
            flash_attn (bool, optional): 是否使用Flash Attention. 默认是True.
            softmax_dropout (bool, optional): 是否在attention的softmax后使用dropout. 默认是False.
            mlp_activation_quant_bits (int, optional): MLP激活值的量化比特数; 如果设置, 会覆盖mlp_1linear_quant_bits, mlp_gelu_input_quant_bits和mlp_2linear_quant_bits. 默认是None.
            mlp_1linear_quant_bits (int, optional): MLP层第一个线性层输入激活的量化比特数. 默认为None.
            mlp_gelu_input_quant_bits (int, optional): GELU输入激活值的量化比特数. 默认为None.
            mlp_2linear_quant_bits (int, optional): MLP层第二个线性层输入激活的量化比特数. 默认为None.
            mlp_recompute_gelu (bool, optional): 是否在MLP反向计算过程中使用GELU激活重计算. 默认为False.
            output_dir (str): 如果设置目标路径, 会将汇总字典输出到目标路径下. 默认为None.
            output_file_prefix (str): 策略以文件形式保存时的前缀
            output_file_suffix (str): 策略以文件形式保存时的后缀
            auto_adjust_split (bool): 是否自动调整流水线层数切分以平衡内存分布 默认为False.
        返回值:
            dict: 训练过程分析的汇总字典.
        )
        """
        if seq_len is None:
            assert (self.model_config.max_seq_len is not None), "seq_len must be set if max_seq_len is not set"
            seq_len = self.model_config.max_seq_len
        else:
            assert (seq_len <= self.model_config.max_seq_len), "seq_len must be less than model max_seq_len"

        assert self.parallelism_config.pp_size <= self.model_config.num_layers, "pp size must be smaller than num layers"
        
        # 均匀切分，如果不能整除，默认层数多的靠后
        split_result = split_stage(self.model_config.num_layers, self.parallelism_config.pp_size)
        
        # 区别是否考虑zero，输入embedding的内存，均考虑了tp
        weight_memory_embedding = self.get_memory_embedding(ds_zero) 
        unsharded_weight_memory_embedding = self.get_memory_embedding(ds_zero, is_sharded=False)
        
        weight_memory_per_layer, weight_memory_per_attn, weight_memory_per_mlp, weight_memory_per_layernorm = self.get_weight_memory_per_layer(is_sharded=True, ds_zero=ds_zero, return_breakdown=True)
        
        weight_memory_last_layernorm = self.get_weight_memory_last_layernorm(ds_zero)
        
        # 优化器状态和梯度内存占用
        optimizer_state_memory_per_layer, gradient_memory_per_layer = self.get_memory_optimizer_state_and_gradient_per_layer(master_weights_dtype_bytes, other_op_bytes, ds_zero) 
        optimizer_state_memory_embedding, gradient_memory_embedding = self.get_memory_optimizer_state_and_gradient_embedding(master_weights_dtype_bytes, other_op_bytes, ds_zero)
        optimizer_state_memory_last_layernorm, gradient_memory_last_layernorm = self.get_memory_optimizer_state_and_gradient_last_layernorm(master_weights_dtype_bytes, other_op_bytes, ds_zero)
        
        # 考虑self.cache_enabled参数，是否缓存fp16/bf16精度的梯度
        if self.cache_enabled:
            cache_dtype_bytes = self.dtype_config.weight_bits / BITS_PER_BYTE
            gradient_memory_per_layer *= (master_weights_dtype_bytes + cache_dtype_bytes) / master_weights_dtype_bytes
            gradient_memory_embedding *= (master_weights_dtype_bytes + cache_dtype_bytes) / master_weights_dtype_bytes
            gradient_memory_last_layernorm *= (master_weights_dtype_bytes + cache_dtype_bytes) / master_weights_dtype_bytes
        
        weight_op_grad_memory_per_layer = weight_memory_per_layer + optimizer_state_memory_per_layer + gradient_memory_per_layer
        head_weight_op_grad_memory = weight_memory_embedding + optimizer_state_memory_embedding + gradient_memory_embedding
        tail_weight_op_grad_memory = head_weight_op_grad_memory * int(self.parallelism_config.pp_size > 1) + weight_memory_last_layernorm + optimizer_state_memory_last_layernorm + gradient_memory_last_layernorm
        
        memory_left_arr = np.ones(self.parallelism_config.pp_size) * self.gpu_config.mem_per_GPU_in_GB * 1024**3
        comunication_buffer = 0.4 * 1024**3 * (int(self.parallelism_config.rdp_size>1) + int(self.parallelism_config.dp_size>1) + int(self.parallelism_config.pp_size>1) + int(self.parallelism_config.tp_size>1)+int(self.parallelism_config.ep_size>1)+int(self.parallelism_config.sp_size>1))
        system_memory = 4 * 1024**3
        splinter_memory = 4 * 1024**3
        memory_left_arr = memory_left_arr - comunication_buffer - system_memory - splinter_memory
        
        micro_batch_size = 1
        
        summary_dict_list = []
        
        while True:

            activation_memory_per_layer_batch_size_n, attn_activation_memory_per_layer_batch_size_n, mlp_activation_memory_per_layer_batch_size_n, layernorm_activation_memory_per_layer_batch_size_n = self.get_activation_memory_per_layer(
                micro_batch_size,
                seq_len,
                is_inference=False,
                activation_recomputation=activation_recomputation,
                layernorm_dtype_bytes=layernorm_dtype_bytes,
                flash_attn=flash_attn,
                softmax_dropout=softmax_dropout,
                mlp_activation_quant_bits=mlp_activation_quant_bits,
                mlp_1linear_quant_bits=mlp_1linear_quant_bits,
                mlp_gelu_input_quant_bits=mlp_gelu_input_quant_bits,
                mlp_2linear_quant_bits=mlp_2linear_quant_bits,
                mlp_recompute_gelu=mlp_recompute_gelu,
                return_breakdown=True,
            )
        
            activation_memory_input_embedding_batch_size_n = self.get_activation_memory_input_embedding(micro_batch_size, seq_len)
            activation_memory_output_embedding_batch_size_n = self.get_activation_memory_output_embedding(micro_batch_size, seq_len)

            if auto_adjust_split:
                split_result_lists, memory_occupy_lists = balance_memory(pp_size=self.parallelism_config.pp_size, layers=self.model_config.num_layers, per_layer_activation_memory=activation_memory_per_layer_batch_size_n, head_weight_op_grad_memory=head_weight_op_grad_memory, tail_weight_op_grad_memory=tail_weight_op_grad_memory, per_layer_weight_op_grad_memory=weight_op_grad_memory_per_layer, head_activation_memory=activation_memory_input_embedding_batch_size_n, tail_activation_memory=activation_memory_output_embedding_batch_size_n)
            else:
                memory_occupy_list, _ = memory_per_gpu(pp_size=self.parallelism_config.pp_size, layers=self.model_config.num_layers, per_layer_activation_memory=activation_memory_per_layer_batch_size_n, head_weight_op_grad_memory=head_weight_op_grad_memory, tail_weight_op_grad_memory=tail_weight_op_grad_memory, per_layer_weight_op_grad_memory=weight_op_grad_memory_per_layer, head_activation_memory=activation_memory_input_embedding_batch_size_n, tail_activation_memory=activation_memory_output_embedding_batch_size_n, split_result=split_result)
                split_result_lists = [split_result]
                memory_occupy_lists = [memory_occupy_list]
            
            memory_occupy_arr = np.array(memory_occupy_lists[-1])            
            if np.sum(memory_left_arr >= memory_occupy_arr) != self.parallelism_config.pp_size:
                max_batch_size_per_gpu = micro_batch_size - 1
                if not auto_adjust_split:
                    for i_dict in summary_dict_list:
                        i_dict["max_batch_size_per_gpu"] = max_batch_size_per_gpu
                break
            
            for split_result, memory_occupy_list in zip(split_result_lists, memory_occupy_lists):
                
                weight_op_grad_memory_per_gpu_list = weight_op_grad_memory_per_gpu(split_result=split_result, head_weight_op_grad_memory=head_weight_op_grad_memory, tail_weight_op_grad_memory=tail_weight_op_grad_memory, per_layer_weight_op_grad_memory=weight_op_grad_memory_per_layer)
                weight_op_grad_memory_per_gpu_arr = np.array(weight_op_grad_memory_per_gpu_list)
                
                memory_occupy_arr = np.array(memory_occupy_list)
                
                if np.sum(memory_left_arr >= memory_occupy_arr) != self.parallelism_config.pp_size:
                    continue
                else:
                    # 这块的判断策略可能需要验证一下
                    if global_batch_size % (micro_batch_size * self.parallelism_config.dp_size) == 0:

                        (
                            batch_size_per_gpu,                       
                            gradient_accumulation_steps,
                            global_batch_size,
                        ) = self.config_batch_size_and_gradient_accumulation_steps(
                            max_batch_size_per_gpu=None,
                            batch_size_per_gpu=micro_batch_size,           
                            gradient_accumulation_steps=None,  
                            global_batch_size=global_batch_size,
                        )
                        if batch_size_per_gpu == -1 and gradient_accumulation_steps == -1 and global_batch_size == -1:
                            break
                        
                        latency_fwd_per_layer_attn_compute = self.get_latency_fwd_per_layer_attn(
                            batch_size_per_gpu, seq_len, False, activation_recomputation)
                        
                        latency_fwd_per_layer_mlp_compute = self.get_latency_fwd_per_layer_mlp(
                            batch_size_per_gpu, seq_len, False, activation_recomputation)
                        
                        latency_fwd_per_layernorm_compute = self.get_latency_fwd_per_layernorm(
                            batch_size_per_gpu, seq_len, layernorm_dtype_bytes)
                        
                        latency_fwd_per_layer = self.get_latency_fwd_per_layer(
                            batch_size_per_gpu, seq_len, False, activation_recomputation)[0]
                        
                        latency_fwd_per_input_embedding = self.get_latency_fwd_input_embedding(batch_size_per_gpu, seq_len, dtype_bytes=self.dtype_config.embedding_bits / BITS_PER_BYTE)
                        
                        latency_recompute_per_layer = 0
                        if mlp_recompute_gelu == True:
                            latency_recompute_per_layer += self.get_latency_recompute_gelu(batch_size_per_gpu, seq_len)
                        if activation_recomputation == ActivationRecomputation.FULL:
                            latency_recompute_per_layer = (latency_fwd_per_layer_attn_compute +
                                latency_fwd_per_layer_mlp_compute +
                                2 * latency_fwd_per_layernorm_compute)
                        elif activation_recomputation == ActivationRecomputation.NORM_ATTN_NORM:
                            latency_recompute_per_layer += (latency_fwd_per_layer_attn_compute +
                                2 * latency_fwd_per_layernorm_compute)
                        elif activation_recomputation == ActivationRecomputation.ATTN:
                            latency_recompute_per_layer += latency_fwd_per_layer_attn_compute
                        elif activation_recomputation == ActivationRecomputation.ATTN_COMPUTE:
                            latency_recompute_per_layer += self.get_num_flops_total_attn_compute(
                                batch_size_per_gpu, seq_len) / (
                                    (self.parallelism_config.tp_size *
                                    self.parallelism_config.pp_size) *
                                    self.get_TFLOPS_per_gpu() * 1e12)
                        elif activation_recomputation == ActivationRecomputation.NONE:
                            latency_recompute_per_layer += 0
                        
                        # latency_bwd_per_layer = 2 * latency_fwd_per_layer + latency_recompute_per_layer
                        
                        latency_fwd_per_stage_arr = np.array(split_result) * latency_fwd_per_layer
                        latency_fwd_per_stage_arr[0] += latency_fwd_per_input_embedding
                        latency_fwd_per_stage_arr[-1] += latency_fwd_per_input_embedding * int(self.parallelism_config.pp_size>1) + latency_fwd_per_layernorm_compute
                        
                        latency_bwd_per_stage_arr = 2 * latency_fwd_per_stage_arr + np.array(split_result) * latency_recompute_per_layer
                        
                        p2p_latency = self.get_latency_fwd_inter_pipeline(
                            batch_size_per_gpu, seq_len, self.dtype_config.activation_bits / BITS_PER_BYTE)
                        
                        latency_weight_update_per_stage_arr = self.get_latency_weight_update(weight_op_grad_memory_per_gpu_arr)
                        
                        latency_per_iter = (np.sum(latency_fwd_per_stage_arr) + (gradient_accumulation_steps-1)*np.max(latency_fwd_per_stage_arr) + 
                                            np.sum(latency_bwd_per_stage_arr) + (gradient_accumulation_steps-1)*np.max(latency_bwd_per_stage_arr) + 
                                            ceil(gradient_accumulation_steps / self.parallelism_config.pp_size) * 2 * (self.parallelism_config.pp_size - 1) * p2p_latency)
                        
                        latency_rdp_per_stage_arr = np.array(split_result) * self.get_latency_rdp_allreduce_per_layer()
                        latency_rdp_per_stage_arr[0] += self.get_latency_rdp_allreduce_embedding()
                        latency_rdp_per_stage_arr[-1] += self.get_latency_rdp_allreduce_embedding() * int(self.parallelism_config.pp_size>1) + self.get_latency_rdp_allreduce_lastnorm()
                        
                        latency_per_iter += np.max(latency_rdp_per_stage_arr)
                        latency_per_iter = float(latency_per_iter)
                        
                        total_num_gpus = (self.parallelism_config.tp_size *
                                self.parallelism_config.pp_size *
                                self.parallelism_config.dp_size *
                                self.parallelism_config.rdp_size)
                        
                        if total_num_tokens is not None:
                            if total_num_tokens < 20 * self.total_num_params:
                                logger.warning(
                                    "according to the Chinchilla paper"
                                    " (https://arxiv.org/abs/2203.15556), to train a"
                                    " compute-optimal LLM, \nwe need around 20 text tokens"
                                    " per parameter, the given total_num_tokens /"
                                    " total_num_tokens ="
                                    f" {round(total_num_tokens/self.total_num_params, 3)} ")
                            num_iters = int(total_num_tokens / (global_batch_size * seq_len))
                            total_training_latency = latency_per_iter * num_iters
                        else:
                            total_training_latency = None
                            
                        gpu_hours = (total_training_latency * total_num_gpus /
                            3600 if total_training_latency is not None else None)
                        
                        summary_dict = {
                            "batch_size_per_gpu":
                            batch_size_per_gpu,
                            "gradient_accumulation_steps":
                            gradient_accumulation_steps,
                            "global_batch_size":
                            global_batch_size,
                            "dp_size":
                            self.parallelism_config.dp_size * self.parallelism_config.rdp_size,
                            # "rdp_size":
                            # self.parallelism_config.rdp_size,
                            "tp_size":
                            self.parallelism_config.tp_size,
                            "pp_size":
                            self.parallelism_config.pp_size,
                            "sp_size":
                            self.parallelism_config.sp_size,
                            "ep_size":
                            self.parallelism_config.ep_size,
                            # "ds_zero":
                            # DSZeRO(ds_zero).name,
                            "use_distributed_optimizer":
                            False if ds_zero == DSZeRO.NONE else True,
                            "total_num_gpus":
                            total_num_gpus,
                            "seq_len":
                            seq_len,
                            "total_num_tokens":
                            total_num_tokens,
                            "layers_split":
                            split_result.copy(), 
                            "num_params_total":
                            "{} B".format(self.total_num_params / 10**9),
                            "activation_recomputation":
                            ActivationRecomputation(activation_recomputation).name,
                            "use_mc2":
                            self.use_mc2,
                            "layernorm_dtype_bytes":
                            layernorm_dtype_bytes,
                            "mlp_activation_quant_bits":
                            mlp_activation_quant_bits,
                            "mlp_recompute_gelu":
                            mlp_recompute_gelu,
                            "mlp_gated_linear_units":
                            self.model_config.mlp_gated_linear_units,
                            # "flops_efficiency":
                            # self.flops_efficiency,
                            # "hbm_memory_efficiency":
                            # self.hbm_memory_efficiency,
                            # "weight_memory_per_layer":
                            # "{} GB".format(weight_memory_per_layer / 1024**3),
                            # "weight_memory_embedding_per_gpu":
                            # "{} GB".format(weight_memory_embedding / 1024**3),
                            # "gradient_memory_per_layer":
                            # "{} GB".format(gradient_memory_per_layer / 1024**3),
                            # "optimizer_state_memory_per_layer":
                            # "{} GB".format(optimizer_state_memory_per_layer / 1024**3),
                            "(weight+op_state)_memory_per_gpu":
                            "{} GB".format(weight_op_grad_memory_per_gpu_arr / 1024**3),
                            # "activation_memory_batch_size_n":
                            # "{} GB".format(activation_memory_per_layer_batch_size_n / 1024**3),
                            "memory_occupy":
                            "{} GB".format((memory_occupy_arr + comunication_buffer + system_memory + splinter_memory) / 1024**3),
                            "estimated_peak_memory_per_gpu":
                            "{} GB".format(np.max(memory_occupy_arr + comunication_buffer + system_memory + splinter_memory) / 1024**3),
                        }
                        device_tokens_per_sec = round(
                            seq_len * batch_size_per_gpu / latency_per_iter, 2)
                        summary_dict.update({
                            "latency_per_iter_in_sec": latency_per_iter,
                            "device_tokens_per_sec": device_tokens_per_sec,
                            "total_training_latency_in_hour": total_training_latency / 3600,
                            "gpu_hours": gpu_hours,
                        })
                        
                        if output_dir is not None:
                            self.output_summary_dict(summary_dict,
                                                    output_dir,
                                                    print_human_readable=True,
                                                    output_file_prefix=output_file_prefix,
                                                    output_file_suffix=output_file_suffix)
                        summary_dict_list.append(summary_dict)
            micro_batch_size += 1   
        
        return summary_dict_list
    
