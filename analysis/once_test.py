###
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

def test_once(
    # 模型、集群、数据类型配置
    model_name: str = None,
    gpu_name: str = None,
    dtype_name="w16a16e16",
    global_batch_size: int = None,
    seq_len: int = None,
    total_num_tokens: int = 300e9,
    total_num_gpus: int = 8,
    # 模型计算和并行策略
    activation_recomputation: int = 0,
    auto_adjust_split: bool = False,
    flash_attn: bool = True,
    softmax_dropout: bool = False,
    use_sp: bool = True,
    use_ep: int = 1,           
    use_distributed_optimizer: bool = True,
    mlp_recompute_gelu: bool = False,
    tp_size: int = None,
    dp_size: int = None,
    pp_size: int = None,
    num_attention_heads: int = None,
    num_query_groups: int = None,
    use_mc2: bool = True,
    use_bias: bool = False,
    # 数据类型设置
    layernorm_dtype_bytes: int = BYTES_FP16,
    master_weights_dtype_bytes: int = BYTES_FP16,
    other_op_bytes: int = BYTES_FP16,
    mlp_activation_quant_bits: int = BYTES_FP16,
    mlp_1linear_quant_bits: int = BYTES_FP16,
    mlp_gelu_input_quant_bits: int = BYTES_FP16,
    mlp_2linear_quant_bits: int = BYTES_FP16,
    # 通信和计算性能超参数
    achieved_tflops: float = None,
    flops_efficiency: float = FLOPS_EFFICIENCY,
    hbm_memory_efficiency: float = HBM_MEMORY_EFFICIENCY,
    intra_node_memory_efficiency=INTRA_NODE_MEMORY_EFFICIENCY,
    inter_node_memory_efficiency=INTER_NODE_MEMORY_EFFICIENCY,
    # 策略输出设置
    output_dir: str = None,
    output_file_prefix: str = "",
    output_file_suffix: str = "",
):
    # all possible tp configuration
    assert total_num_gpus >= 1 , f'total number of gpus must more than one'
    
    model_config = get_model_config_by_name(model_name)
    gpu_config = get_gpu_config_by_name(gpu_name)
    dtype_config = get_dtype_config_by_name(dtype_name)
    
    if not use_distributed_optimizer:
        rdp_size = dp_size
        dp_size = 1
    else:
        rdp_size = 1
    
    parallel_config = ParallelismConfig(
        tp_size=tp_size,
        pp_size=pp_size,
        dp_size=dp_size,
        rdp_size=rdp_size,
        ep_size=use_ep,
        sp_size=tp_size if use_sp else 1
    )
    
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
    
    summary_dict_list = analysis.training(
        global_batch_size=global_batch_size,
        seq_len=seq_len,
        total_num_tokens=total_num_tokens,
        activation_recomputation=ActivationRecomputation(
            activation_recomputation),
        ds_zero=DSZeRO(1) if use_distributed_optimizer else DSZeRO(0),
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
    #for summary_dict in summary_dict_list:
    #    print(json.dumps(summary_dict, indent=2))
    if model_config.n_head % tp_size != 0:
        assert model_config.n_head == num_attention_heads
        summary_dict_list = "valueerror"
    if num_query_groups is not None and num_query_groups % tp_size != 0:
        summary_dict_list = "valueerror"
    return summary_dict_list
                
#def main():
#    #fire.Fire({"test_once":test_once}, serialize=lambda x: json.dumps(x, indent=4))
#    test_once(model_name="deepseek_r1_distill_qwen_7b",
#              gpu_name="as910-pcie-64gb",
#              global_batch_size=16,
#              seq_len=128,
#              use_sp=False,
#              use_distributed_optimizer=True,
#              tp_size=8,
#              dp_size=1,
#              pp_size=1)
                
#if __name__ == "__main__":
#    main()