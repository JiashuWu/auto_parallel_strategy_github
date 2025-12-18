# from analysis.analysis import LLMAnalysis, ActivationRecomputation, DSZeRO
# from analysis.constant import *
# from analysis.config import (DtypeConfig, GPUConfig, ModelConfig, ParallelismConfig, 
#                     get_dtype_config_by_name,
#                     get_gpu_config_by_name,
#                     get_model_config_by_name)
from analysis import LLMAnalysis, ActivationRecomputation, DSZeRO
from constant import *
from config import (DtypeConfig, GPUConfig, ModelConfig, ParallelismConfig, 
                    get_dtype_config_by_name,
                    get_gpu_config_by_name,
                    get_model_config_by_name)

import fire
import json

from collections import defaultdict

def find_aps(
    # 模型、集群、数据类型配置
    model_name="facebook_opt-1.3b",
    gpu_name="a100-sxm-40gb",
    dtype_name="w16a16e16",
    global_batch_size: int = None,
    seq_len: int = None,
    total_num_tokens: int = int(300e9), ### 这块不修改通不过
    total_num_gpus: int = None,
    # 模型计算和并行策略
    use_activation_recomputation: bool = True,
    use_auto_adjust_split: bool = False,
    flash_attn: bool = True,
    softmax_dropout: bool = False,
    use_sp: bool = True,
    use_ep: int = None,               # 如果使用Megatron设定，那dp_size % ep_size = 0
    use_mlp_recompute_gelu: bool = True,
    use_distributed_optimizer: bool = True,
    use_mc2: bool = True,
    use_bias: bool = False,
    # 数据类型设置
    layernorm_dtype_bytes: int = BYTES_FP32,
    master_weights_dtype_bytes: int = BYTES_FP32,
    other_op_bytes: int = None,
    mlp_activation_quant_bits: int = None,
    mlp_1linear_quant_bits: int = None,
    mlp_gelu_input_quant_bits: int = None,
    mlp_2linear_quant_bits: int = None,
    # 通信和计算性能超参数
    achieved_tflops: float = None,
    flops_efficiency: float = None,
    hbm_memory_efficiency: float = HBM_MEMORY_EFFICIENCY,
    intra_node_memory_efficiency=INTRA_NODE_MEMORY_EFFICIENCY,
    inter_node_memory_efficiency=INTER_NODE_MEMORY_EFFICIENCY,
    # 策略输出设置
    output_dir: str = None,
    output_file_prefix: str = "",
    output_file_suffix: str = "",
    max_strategies_num: int = 3,
):
    # all possible tp configuration
    assert total_num_gpus >= 1 , f'total number of gpus must more than one'
    model_config = get_model_config_by_name(model_name)
    gpu_config = get_gpu_config_by_name(gpu_name)
    dtype_config = get_dtype_config_by_name(dtype_name)
    # print(model_name, total_num_gpus, model_config)
    # tp的强设定
    tps = [1, 2, 4, 8]
    is_first = True
    strategies = defaultdict(list)
    auto_adjust_split_list = [True, False] if use_auto_adjust_split else [False]
    mlp_recompute_gelu_list = [True, False] if use_mlp_recompute_gelu else [False]
    ds_zero_list = [0, 1] if use_distributed_optimizer else [0]
    # print(mlp_recompute_gelu_list)
    for ds_zero in ds_zero_list:
        for auto_adjust_split in auto_adjust_split_list:
            for mlp_recompute_gelu in mlp_recompute_gelu_list:
                for activation_recomputation in range(3 if use_activation_recomputation else 1):
                    for tp_size in tps:
                        max_pp = total_num_gpus // tp_size
                        for pp_size in range(1, max_pp+1):
                            if total_num_gpus % (tp_size * pp_size) == 0:
                                rdp_size = total_num_gpus // (tp_size * pp_size)
                                dp_size = 1
                                if ds_zero:
                                    dp_size = rdp_size
                                    rdp_size = 1
                                # 注意，dp指的是zero模式下的dp；rdp指的是通俗dp，不进行shard
                                parallel_config = ParallelismConfig(
                                tp_size=tp_size,
                                pp_size=pp_size,
                                dp_size=dp_size,
                                rdp_size=rdp_size,
                                sp_size=tp_size if use_sp else 1,   # 默认就是sp=tp
                                ep_size=use_ep if use_ep else 1)
                                if is_first:
                                    analysis = LLMAnalysis(
                                    model_config,
                                    gpu_config,
                                    dtype_config,
                                    parallel_config,
                                    hbm_memory_efficiency=hbm_memory_efficiency,
                                    intra_node_memory_efficiency=intra_node_memory_efficiency,
                                    inter_node_memory_efficiency=inter_node_memory_efficiency,
                                    achieved_tflops=achieved_tflops,
                                    flops_efficiency=flops_efficiency,
                                    use_mc2=use_mc2,
                                    use_bias=use_bias
                                    )
                                    is_first = False
                                else:
                                    analysis.update_parallelism_config(parallel_config)
                                try:
                                    summary_dict_list = analysis.training(
                                    global_batch_size=global_batch_size,
                                    seq_len=seq_len,
                                    total_num_tokens=total_num_tokens,
                                    activation_recomputation=ActivationRecomputation(activation_recomputation),
                                    ds_zero=DSZeRO(ds_zero),
                                    layernorm_dtype_bytes=layernorm_dtype_bytes,
                                    master_weights_dtype_bytes=master_weights_dtype_bytes,
                                    other_op_bytes=other_op_bytes,
                                    flash_attn=flash_attn,
                                    softmax_dropout=softmax_dropout,
                                    mlp_activation_quant_bits=mlp_activation_quant_bits,
                                    mlp_1linear_quant_bits=mlp_1linear_quant_bits,
                                    mlp_gelu_input_quant_bits=mlp_gelu_input_quant_bits,
                                    mlp_2linear_quant_bits=mlp_2linear_quant_bits,
                                    mlp_recompute_gelu=mlp_recompute_gelu,
                                    output_dir=output_dir,
                                    output_file_prefix=output_file_prefix,
                                    output_file_suffix=output_file_suffix,
                                    auto_adjust_split=auto_adjust_split
                                    )
                                    for summary_dict in summary_dict_list:
                                        new_strategy = summary_dict
                                        if new_strategy not in strategies[summary_dict["gpu_hours"]]:
                                            strategies[summary_dict["gpu_hours"]].append(new_strategy) # gpu*time
                                except:
                                    pass
    sorted_keys = sorted(strategies.keys())
    print("total strategies num is : {}".format(len(sorted_keys)))
    max_strategies_num = min(max_strategies_num, len(sorted_keys))
    for i in range(max_strategies_num):
        print("----------No.{} strategy, gpu hours is {}.---------".format(i+1, sorted_keys[i]))
        print(strategies[sorted_keys[i]])
        
                
def main():
    fire.Fire({"find_aps":find_aps}, serialize=lambda x: json.dumps(x, indent=4))
                
if __name__ == "__main__":
    main()