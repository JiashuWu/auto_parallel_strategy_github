python auto_parallel_strategy.py find_aps --model_name llama3-8b --gpu_name as910-pcie-64gb --use_activation_recomputation True  --global_batch_size 768 --total_num_gpus 8 --max_strategies_num 3



python auto_parallel_strategy.py find_aps --model_name telechat2_5-35b --gpu_name h100-pcie-80gb --use_activation_recomputation True  --global_batch_size 768 --total_num_gpus 16 --max_strategies_num 3

python auto_parallel_strategy.py find_aps --model_name qwen3-moe --gpu_name as910-pcie-64gb --use_activation_recomputation True  --global_batch_size 768 --total_num_gpus 128 --max_strategies_num 3
