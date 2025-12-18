python /data01/wujiashu/auto_parallel_strategy/resources/env_sh_updater.py --template_sh_file /data01/wujiashu/auto_parallel_strategy/resources/env_platform.sh --output_sh_file /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh --SUBSTITUTION_MODEL_DIR /data01/models/DeepSeek-R1-Distill-Qwen-7B --SUBSTITUTION_MODEL_TYPE deepseek_r1_distill_qwen_7b
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 1 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_1_1_true_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_1_1_true_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 1 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 1 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_1_1_true_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_1_1_true_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 1 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 1 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_1_1_false_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_1_1_false_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 1 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 1 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_1_1_false_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_1_1_false_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 1 1 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 1 2 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_1_2_true_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_1_2_true_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 1 2 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 1 2 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_1_2_true_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_1_2_true_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 1 2 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 1 2 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_1_2_false_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_1_2_false_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 1 2 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 1 2 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_1_2_false_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_1_2_false_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 1 2 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 1 4 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_1_4_true_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_1_4_true_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 1 4 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 1 4 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_1_4_true_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_1_4_true_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 1 4 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 1 4 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_1_4_false_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_1_4_false_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 1 4 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 1 4 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_1_4_false_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_1_4_false_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 1 4 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 1 8 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_1_8_true_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_1_8_true_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 1 8 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 1 8 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_1_8_true_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_1_8_true_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 1 8 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 1 8 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_1_8_false_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_1_8_false_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 1 8 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 1 8 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_1_8_false_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_1_8_false_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 1 8 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 2 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_2_1_true_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_2_1_true_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 2 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 2 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_2_1_true_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_2_1_true_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 2 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 2 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_2_1_false_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_2_1_false_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 2 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 2 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_2_1_false_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_2_1_false_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 2 1 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 2 2 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_2_2_true_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_2_2_true_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 2 2 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 2 2 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_2_2_true_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_2_2_true_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 2 2 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 2 2 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_2_2_false_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_2_2_false_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 2 2 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 2 2 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_2_2_false_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_2_2_false_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 2 2 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 2 4 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_2_4_true_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_2_4_true_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 2 4 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 2 4 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_2_4_true_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_2_4_true_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 2 4 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 2 4 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_2_4_false_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_2_4_false_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 2 4 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 2 4 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_2_4_false_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_2_4_false_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 2 4 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 4 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_4_1_true_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_4_1_true_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 4 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 4 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_4_1_true_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_4_1_true_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 4 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 4 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_4_1_false_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_4_1_false_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 4 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 4 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_4_1_false_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_4_1_false_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 4 1 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 4 2 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_4_2_true_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_4_2_true_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 4 2 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 4 2 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_4_2_true_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_4_2_true_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 4 2 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 4 2 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_4_2_false_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_4_2_false_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 4 2 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 4 2 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_4_2_false_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_4_2_false_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 4 2 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 8 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_8_1_true_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_8_1_true_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 8 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 8 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_8_1_true_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_8_1_true_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 8 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 8 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_8_1_false_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_8_1_false_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 8 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 8 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_8_1_false_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_7b_8_1_false_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 8 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/env_sh_updater.py --template_sh_file /data01/wujiashu/auto_parallel_strategy/resources/env_platform.sh --output_sh_file /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh --SUBSTITUTION_MODEL_DIR /data01/models/DeepSeek-R1-Distill-Qwen-14B --SUBSTITUTION_MODEL_TYPE deepseek_r1_distill_qwen_14b
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 1 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_1_1_true_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_1_1_true_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 1 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 1 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_1_1_true_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_1_1_true_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 1 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 1 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_1_1_false_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_1_1_false_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 1 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 1 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_1_1_false_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_1_1_false_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 1 1 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 1 2 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_1_2_true_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_1_2_true_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 1 2 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 1 2 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_1_2_true_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_1_2_true_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 1 2 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 1 2 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_1_2_false_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_1_2_false_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 1 2 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 1 2 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_1_2_false_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_1_2_false_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 1 2 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 1 4 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_1_4_true_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_1_4_true_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 1 4 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 1 4 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_1_4_true_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_1_4_true_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 1 4 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 1 4 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_1_4_false_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_1_4_false_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 1 4 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 1 4 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_1_4_false_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_1_4_false_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 1 4 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 1 8 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_1_8_true_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_1_8_true_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 1 8 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 1 8 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_1_8_true_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_1_8_true_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 1 8 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 1 8 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_1_8_false_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_1_8_false_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 1 8 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 1 8 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_1_8_false_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_1_8_false_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 1 8 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 2 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_2_1_true_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_2_1_true_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 2 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 2 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_2_1_true_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_2_1_true_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 2 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 2 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_2_1_false_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_2_1_false_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 2 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 2 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_2_1_false_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_2_1_false_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 2 1 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 2 2 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_2_2_true_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_2_2_true_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 2 2 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 2 2 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_2_2_true_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_2_2_true_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 2 2 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 2 2 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_2_2_false_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_2_2_false_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 2 2 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 2 2 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_2_2_false_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_2_2_false_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 2 2 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 2 4 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_2_4_true_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_2_4_true_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 2 4 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 2 4 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_2_4_true_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_2_4_true_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 2 4 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 2 4 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_2_4_false_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_2_4_false_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 2 4 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 2 4 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_2_4_false_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_2_4_false_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 2 4 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 4 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_4_1_true_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_4_1_true_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 4 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 4 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_4_1_true_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_4_1_true_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 4 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 4 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_4_1_false_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_4_1_false_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 4 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 4 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_4_1_false_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_4_1_false_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 4 1 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 4 2 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_4_2_true_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_4_2_true_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 4 2 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 4 2 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_4_2_true_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_4_2_true_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 4 2 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 4 2 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_4_2_false_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_4_2_false_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 4 2 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 4 2 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_4_2_false_false_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_4_2_false_false_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 4 2 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 8 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_8_1_true_true_gpu_20251206173155922.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_8_1_true_true_gpu_20251206173155922.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 8 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 8 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_8_1_true_false_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_8_1_true_false_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 8 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 8 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_8_1_false_true_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_8_1_false_true_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 8 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 8 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_8_1_false_false_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_deepseek_r1_distill_qwen_14b_8_1_false_false_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 8 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/env_sh_updater.py --template_sh_file /data01/wujiashu/auto_parallel_strategy/resources/env_platform.sh --output_sh_file /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh --SUBSTITUTION_MODEL_DIR /data01/models/Llama-2-7b-hf --SUBSTITUTION_MODEL_TYPE llama2_7b
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 1 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_1_1_true_true_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_1_1_true_true_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 1 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 1 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_1_1_true_false_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_1_1_true_false_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 1 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 1 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_1_1_false_true_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_1_1_false_true_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 1 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 1 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_1_1_false_false_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_1_1_false_false_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 1 1 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 1 2 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_1_2_true_true_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_1_2_true_true_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 1 2 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 1 2 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_1_2_true_false_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_1_2_true_false_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 1 2 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 1 2 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_1_2_false_true_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_1_2_false_true_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 1 2 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 1 2 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_1_2_false_false_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_1_2_false_false_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 1 2 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 1 4 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_1_4_true_true_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_1_4_true_true_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 1 4 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 1 4 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_1_4_true_false_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_1_4_true_false_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 1 4 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 1 4 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_1_4_false_true_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_1_4_false_true_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 1 4 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 1 4 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_1_4_false_false_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_1_4_false_false_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 1 4 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 1 8 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_1_8_true_true_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_1_8_true_true_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 1 8 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 1 8 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_1_8_true_false_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_1_8_true_false_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 1 8 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 1 8 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_1_8_false_true_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_1_8_false_true_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 1 8 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 1 8 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_1_8_false_false_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_1_8_false_false_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 1 8 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 2 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_2_1_true_true_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_2_1_true_true_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 2 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 2 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_2_1_true_false_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_2_1_true_false_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 2 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 2 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_2_1_false_true_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_2_1_false_true_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 2 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 2 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_2_1_false_false_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_2_1_false_false_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 2 1 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 2 2 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_2_2_true_true_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_2_2_true_true_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 2 2 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 2 2 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_2_2_true_false_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_2_2_true_false_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 2 2 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 2 2 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_2_2_false_true_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_2_2_false_true_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 2 2 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 2 2 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_2_2_false_false_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_2_2_false_false_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 2 2 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 2 4 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_2_4_true_true_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_2_4_true_true_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 2 4 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 2 4 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_2_4_true_false_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_2_4_true_false_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 2 4 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 2 4 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_2_4_false_true_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_2_4_false_true_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 2 4 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 2 4 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_2_4_false_false_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_2_4_false_false_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 2 4 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 4 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_4_1_true_true_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_4_1_true_true_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 4 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 4 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_4_1_true_false_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_4_1_true_false_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 4 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 4 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_4_1_false_true_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_4_1_false_true_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 4 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 4 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_4_1_false_false_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_4_1_false_false_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 4 1 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 4 2 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_4_2_true_true_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_4_2_true_true_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 4 2 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 4 2 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_4_2_true_false_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_4_2_true_false_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 4 2 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 4 2 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_4_2_false_true_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_4_2_false_true_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 4 2 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 4 2 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_4_2_false_false_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_4_2_false_false_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 4 2 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 8 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_8_1_true_true_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_8_1_true_true_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 8 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 8 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_8_1_true_false_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_8_1_true_false_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 8 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 8 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_8_1_false_true_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_8_1_false_true_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 8 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 8 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_8_1_false_false_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_llama2_7b_8_1_false_false_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 8 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/env_sh_updater.py --template_sh_file /data01/wujiashu/auto_parallel_strategy/resources/env_platform.sh --output_sh_file /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh --SUBSTITUTION_MODEL_DIR /data01/models/Qwen2-0.5B-Instruct --SUBSTITUTION_MODEL_TYPE qwen2_0.5b
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 1 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_1_1_true_true_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_1_1_true_true_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 1 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 1 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_1_1_true_false_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_1_1_true_false_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 1 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 1 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_1_1_false_true_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_1_1_false_true_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 1 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 1 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_1_1_false_false_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_1_1_false_false_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 1 1 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 1 2 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_1_2_true_true_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_1_2_true_true_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 1 2 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 1 2 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_1_2_true_false_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_1_2_true_false_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 1 2 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 1 2 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_1_2_false_true_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_1_2_false_true_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 1 2 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 1 2 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_1_2_false_false_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_1_2_false_false_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 1 2 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 1 4 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_1_4_true_true_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_1_4_true_true_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 1 4 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 1 4 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_1_4_true_false_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_1_4_true_false_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 1 4 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 1 4 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_1_4_false_true_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_1_4_false_true_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 1 4 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 1 4 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_1_4_false_false_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_1_4_false_false_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 1 4 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 1 8 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_1_8_true_true_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_1_8_true_true_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 1 8 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 1 8 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_1_8_true_false_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_1_8_true_false_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 1 8 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 1 8 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_1_8_false_true_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_1_8_false_true_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 1 8 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 1 8 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_1_8_false_false_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_1_8_false_false_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 1 8 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 2 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_2_1_true_true_gpu_20251206173155923.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_2_1_true_true_gpu_20251206173155923.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 2 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 2 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_2_1_true_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_2_1_true_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 2 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 2 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_2_1_false_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_2_1_false_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 2 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 2 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_2_1_false_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_2_1_false_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 2 1 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 2 2 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_2_2_true_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_2_2_true_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 2 2 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 2 2 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_2_2_true_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_2_2_true_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 2 2 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 2 2 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_2_2_false_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_2_2_false_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 2 2 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 2 2 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_2_2_false_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_2_2_false_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 2 2 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 2 4 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_2_4_true_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_2_4_true_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 2 4 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 2 4 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_2_4_true_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_2_4_true_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 2 4 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 2 4 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_2_4_false_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_2_4_false_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 2 4 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 2 4 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_2_4_false_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_2_4_false_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 2 4 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 4 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_4_1_true_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_4_1_true_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 4 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 4 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_4_1_true_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_4_1_true_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 4 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 4 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_4_1_false_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_4_1_false_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 4 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 4 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_4_1_false_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_4_1_false_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 4 1 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 4 2 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_4_2_true_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_4_2_true_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 4 2 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 4 2 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_4_2_true_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_4_2_true_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 4 2 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 4 2 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_4_2_false_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_4_2_false_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 4 2 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 4 2 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_4_2_false_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_4_2_false_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 4 2 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 8 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_8_1_true_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_8_1_true_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 8 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 8 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_8_1_true_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_8_1_true_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 8 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 8 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_8_1_false_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_8_1_false_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 8 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 8 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_8_1_false_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen2_05b_8_1_false_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 8 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/env_sh_updater.py --template_sh_file /data01/wujiashu/auto_parallel_strategy/resources/env_platform.sh --output_sh_file /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh --SUBSTITUTION_MODEL_DIR /data01/models/Qwen2.5-7B-Instruct --SUBSTITUTION_MODEL_TYPE qwen2.5_7b
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 1 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_1_1_true_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_1_1_true_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 1 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 1 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_1_1_true_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_1_1_true_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 1 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 1 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_1_1_false_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_1_1_false_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 1 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 1 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_1_1_false_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_1_1_false_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 1 1 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 1 2 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_1_2_true_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_1_2_true_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 1 2 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 1 2 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_1_2_true_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_1_2_true_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 1 2 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 1 2 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_1_2_false_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_1_2_false_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 1 2 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 1 2 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_1_2_false_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_1_2_false_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 1 2 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 1 4 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_1_4_true_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_1_4_true_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 1 4 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 1 4 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_1_4_true_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_1_4_true_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 1 4 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 1 4 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_1_4_false_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_1_4_false_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 1 4 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 1 4 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_1_4_false_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_1_4_false_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 1 4 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 1 8 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_1_8_true_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_1_8_true_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 1 8 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 1 8 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_1_8_true_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_1_8_true_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 1 8 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 1 8 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_1_8_false_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_1_8_false_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 1 8 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 1 8 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_1_8_false_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_1_8_false_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 1 8 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 2 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_2_1_true_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_2_1_true_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 2 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 2 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_2_1_true_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_2_1_true_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 2 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 2 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_2_1_false_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_2_1_false_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 2 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 2 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_2_1_false_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_2_1_false_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 2 1 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 2 2 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_2_2_true_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_2_2_true_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 2 2 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 2 2 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_2_2_true_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_2_2_true_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 2 2 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 2 2 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_2_2_false_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_2_2_false_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 2 2 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 2 2 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_2_2_false_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_2_2_false_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 2 2 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 2 4 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_2_4_true_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_2_4_true_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 2 4 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 2 4 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_2_4_true_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_2_4_true_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 2 4 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 2 4 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_2_4_false_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_2_4_false_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 2 4 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 2 4 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_2_4_false_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_2_4_false_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 2 4 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 4 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_4_1_true_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_4_1_true_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 4 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 4 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_4_1_true_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_4_1_true_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 4 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 4 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_4_1_false_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_4_1_false_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 4 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 4 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_4_1_false_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_4_1_false_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 4 1 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 4 2 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_4_2_true_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_4_2_true_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 4 2 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 4 2 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_4_2_true_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_4_2_true_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 4 2 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 4 2 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_4_2_false_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_4_2_false_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 4 2 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 4 2 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_4_2_false_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_4_2_false_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 4 2 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 8 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_8_1_true_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_8_1_true_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 8 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 8 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_8_1_true_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_8_1_true_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 8 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 8 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_8_1_false_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_8_1_false_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 8 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 8 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_8_1_false_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_7b_8_1_false_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 8 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/env_sh_updater.py --template_sh_file /data01/wujiashu/auto_parallel_strategy/resources/env_platform.sh --output_sh_file /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh --SUBSTITUTION_MODEL_DIR /data01/models/Qwen2.5-14B-Instruct --SUBSTITUTION_MODEL_TYPE qwen2.5_14b
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 1 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_1_1_true_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_1_1_true_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 1 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 1 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_1_1_true_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_1_1_true_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 1 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 1 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_1_1_false_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_1_1_false_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 1 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 1 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_1_1_false_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_1_1_false_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 1 1 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 1 2 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_1_2_true_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_1_2_true_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 1 2 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 1 2 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_1_2_true_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_1_2_true_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 1 2 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 1 2 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_1_2_false_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_1_2_false_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 1 2 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 1 2 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_1_2_false_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_1_2_false_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 1 2 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 1 4 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_1_4_true_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_1_4_true_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 1 4 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 1 4 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_1_4_true_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_1_4_true_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 1 4 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 1 4 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_1_4_false_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_1_4_false_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 1 4 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 1 4 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_1_4_false_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_1_4_false_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 1 4 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 1 8 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_1_8_true_true_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_1_8_true_true_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 1 8 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 1 8 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_1_8_true_false_gpu_20251206173155924.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_1_8_true_false_gpu_20251206173155924.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 1 8 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 1 8 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_1_8_false_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_1_8_false_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 1 8 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 1 8 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_1_8_false_false_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_1_8_false_false_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 1 8 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 2 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_2_1_true_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_2_1_true_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 2 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 2 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_2_1_true_false_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_2_1_true_false_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 2 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 2 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_2_1_false_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_2_1_false_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 2 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 2 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_2_1_false_false_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_2_1_false_false_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 2 1 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 2 2 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_2_2_true_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_2_2_true_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 2 2 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 2 2 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_2_2_true_false_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_2_2_true_false_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 2 2 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 2 2 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_2_2_false_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_2_2_false_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 2 2 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 2 2 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_2_2_false_false_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_2_2_false_false_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 2 2 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 2 4 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_2_4_true_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_2_4_true_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 2 4 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 2 4 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_2_4_true_false_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_2_4_true_false_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 2 4 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 2 4 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_2_4_false_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_2_4_false_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 2 4 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 2 4 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_2_4_false_false_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_2_4_false_false_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 2 4 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 4 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_4_1_true_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_4_1_true_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 4 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 4 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_4_1_true_false_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_4_1_true_false_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 4 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 4 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_4_1_false_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_4_1_false_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 4 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 4 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_4_1_false_false_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_4_1_false_false_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 4 1 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 4 2 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_4_2_true_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_4_2_true_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 4 2 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 4 2 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_4_2_true_false_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_4_2_true_false_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 4 2 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 4 2 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_4_2_false_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_4_2_false_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 4 2 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 4 2 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_4_2_false_false_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_4_2_false_false_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 4 2 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 8 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_8_1_true_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_8_1_true_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 8 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 8 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_8_1_true_false_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_8_1_true_false_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 8 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 8 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_8_1_false_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_8_1_false_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 8 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 8 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_8_1_false_false_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen25_14b_8_1_false_false_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 8 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/env_sh_updater.py --template_sh_file /data01/wujiashu/auto_parallel_strategy/resources/env_platform.sh --output_sh_file /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh --SUBSTITUTION_MODEL_DIR /data01/models/Qwen3-4B --SUBSTITUTION_MODEL_TYPE qwen3_4b
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 1 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_1_1_true_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_1_1_true_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 1 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 1 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_1_1_true_false_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_1_1_true_false_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 1 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 1 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_1_1_false_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_1_1_false_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 1 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 1 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_1_1_false_false_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_1_1_false_false_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 1 1 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 1 2 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_1_2_true_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_1_2_true_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 1 2 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 1 2 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_1_2_true_false_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_1_2_true_false_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 1 2 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 1 2 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_1_2_false_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_1_2_false_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 1 2 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 1 2 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_1_2_false_false_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_1_2_false_false_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 1 2 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 1 4 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_1_4_true_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_1_4_true_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 1 4 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 1 4 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_1_4_true_false_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_1_4_true_false_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 1 4 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 1 4 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_1_4_false_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_1_4_false_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 1 4 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 1 4 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_1_4_false_false_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_1_4_false_false_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 1 4 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 1 8 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_1_8_true_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_1_8_true_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 1 8 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 1 8 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_1_8_true_false_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_1_8_true_false_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 1 8 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 1 8 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_1_8_false_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_1_8_false_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 1 8 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 1 8 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_1_8_false_false_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_1_8_false_false_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 1 8 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 2 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_2_1_true_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_2_1_true_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 2 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 2 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_2_1_true_false_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_2_1_true_false_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 2 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 2 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_2_1_false_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_2_1_false_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 2 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 2 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_2_1_false_false_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_2_1_false_false_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 2 1 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 2 2 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_2_2_true_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_2_2_true_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 2 2 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 2 2 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_2_2_true_false_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_2_2_true_false_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 2 2 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 2 2 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_2_2_false_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_2_2_false_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 2 2 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 2 2 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_2_2_false_false_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_2_2_false_false_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 2 2 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 2 4 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_2_4_true_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_2_4_true_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 2 4 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 2 4 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_2_4_true_false_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_2_4_true_false_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 2 4 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 2 4 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_2_4_false_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_2_4_false_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 2 4 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 2 4 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_2_4_false_false_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_2_4_false_false_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 2 4 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 4 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_4_1_true_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_4_1_true_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 4 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 4 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_4_1_true_false_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_4_1_true_false_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 4 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 4 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_4_1_false_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_4_1_false_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 4 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 4 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_4_1_false_false_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_4_1_false_false_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 4 1 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 4 2 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_4_2_true_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_4_2_true_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 4 2 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 4 2 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_4_2_true_false_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_4_2_true_false_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 4 2 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 4 2 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_4_2_false_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_4_2_false_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 4 2 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 4 2 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_4_2_false_false_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_4_2_false_false_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 4 2 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 8 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_8_1_true_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_8_1_true_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 8 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 8 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_8_1_true_false_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_8_1_true_false_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 8 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 8 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_8_1_false_true_gpu_20251206173155925.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_8_1_false_true_gpu_20251206173155925.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 8 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 8 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_8_1_false_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_4b_8_1_false_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 8 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/env_sh_updater.py --template_sh_file /data01/wujiashu/auto_parallel_strategy/resources/env_platform.sh --output_sh_file /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh --SUBSTITUTION_MODEL_DIR /data01/models/Qwen3-8B --SUBSTITUTION_MODEL_TYPE qwen3_8b
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 1 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_1_1_true_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_1_1_true_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 1 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 1 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_1_1_true_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_1_1_true_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 1 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 1 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_1_1_false_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_1_1_false_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 1 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 1 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_1_1_false_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_1_1_false_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 1 1 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 1 2 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_1_2_true_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_1_2_true_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 1 2 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 1 2 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_1_2_true_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_1_2_true_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 1 2 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 1 2 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_1_2_false_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_1_2_false_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 1 2 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 1 2 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_1_2_false_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_1_2_false_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 1 2 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 1 4 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_1_4_true_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_1_4_true_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 1 4 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 1 4 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_1_4_true_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_1_4_true_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 1 4 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 1 4 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_1_4_false_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_1_4_false_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 1 4 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 1 4 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_1_4_false_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_1_4_false_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 1 4 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 1 8 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_1_8_true_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_1_8_true_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 1 8 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 1 8 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_1_8_true_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_1_8_true_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 1 8 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 1 8 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_1_8_false_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_1_8_false_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 1 8 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 1 8 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_1_8_false_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_1_8_false_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 1 8 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 2 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_2_1_true_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_2_1_true_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 2 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 2 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_2_1_true_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_2_1_true_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 2 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 2 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_2_1_false_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_2_1_false_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 2 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 2 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_2_1_false_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_2_1_false_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 2 1 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 2 2 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_2_2_true_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_2_2_true_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 2 2 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 2 2 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_2_2_true_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_2_2_true_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 2 2 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 2 2 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_2_2_false_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_2_2_false_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 2 2 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 2 2 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_2_2_false_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_2_2_false_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 2 2 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 2 4 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_2_4_true_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_2_4_true_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 2 4 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 2 4 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_2_4_true_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_2_4_true_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 2 4 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 2 4 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_2_4_false_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_2_4_false_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 2 4 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 2 4 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_2_4_false_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_2_4_false_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 2 4 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 4 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_4_1_true_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_4_1_true_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 4 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 4 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_4_1_true_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_4_1_true_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 4 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 4 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_4_1_false_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_4_1_false_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 4 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 4 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_4_1_false_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_4_1_false_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 4 1 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 4 2 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_4_2_true_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_4_2_true_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 4 2 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 4 2 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_4_2_true_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_4_2_true_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 4 2 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 4 2 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_4_2_false_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_4_2_false_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 4 2 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 4 2 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_4_2_false_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_4_2_false_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 4 2 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 8 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_8_1_true_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_8_1_true_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 8 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 8 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_8_1_true_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_8_1_true_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 8 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 8 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_8_1_false_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_8_1_false_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 8 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 8 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_8_1_false_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_8b_8_1_false_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 8 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/env_sh_updater.py --template_sh_file /data01/wujiashu/auto_parallel_strategy/resources/env_platform.sh --output_sh_file /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh --SUBSTITUTION_MODEL_DIR /data01/models/Qwen3-14B --SUBSTITUTION_MODEL_TYPE qwen3_14b
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 1 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_1_1_true_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_1_1_true_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 1 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 1 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_1_1_true_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_1_1_true_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 1 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 1 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_1_1_false_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_1_1_false_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 1 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 1 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_1_1_false_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_1_1_false_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 1 1 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 1 2 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_1_2_true_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_1_2_true_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 1 2 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 1 2 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_1_2_true_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_1_2_true_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 1 2 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 1 2 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_1_2_false_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_1_2_false_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 1 2 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 1 2 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_1_2_false_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_1_2_false_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 1 2 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 1 4 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_1_4_true_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_1_4_true_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 1 4 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 1 4 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_1_4_true_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_1_4_true_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 1 4 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 1 4 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_1_4_false_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_1_4_false_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 1 4 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 1 4 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_1_4_false_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_1_4_false_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 1 4 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 1 8 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_1_8_true_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_1_8_true_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 1 8 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 1 8 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_1_8_true_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_1_8_true_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 1 8 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 1 8 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_1_8_false_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_1_8_false_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 1 8 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 1 8 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_1_8_false_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_1_8_false_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 1 8 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 2 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_2_1_true_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_2_1_true_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 2 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 2 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_2_1_true_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_2_1_true_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 2 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 2 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_2_1_false_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_2_1_false_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 2 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 2 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_2_1_false_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_2_1_false_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 2 1 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 2 2 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_2_2_true_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_2_2_true_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 2 2 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 2 2 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_2_2_true_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_2_2_true_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 2 2 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 2 2 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_2_2_false_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_2_2_false_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 2 2 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 2 2 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_2_2_false_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_2_2_false_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 2 2 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 2 4 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_2_4_true_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_2_4_true_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 2 4 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 2 4 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_2_4_true_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_2_4_true_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 2 4 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 2 4 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_2_4_false_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_2_4_false_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 2 4 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 2 4 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_2_4_false_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_2_4_false_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 2 4 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 4 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_4_1_true_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_4_1_true_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 4 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 4 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_4_1_true_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_4_1_true_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 4 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 4 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_4_1_false_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_4_1_false_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 4 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 4 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_4_1_false_false_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_4_1_false_false_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 4 1 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 4 2 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_4_2_true_true_gpu_20251206173155926.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_4_2_true_true_gpu_20251206173155926.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 4 2 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 4 2 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_4_2_true_false_gpu_20251206173155927.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_4_2_true_false_gpu_20251206173155927.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 4 2 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 4 2 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_4_2_false_true_gpu_20251206173155927.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_4_2_false_true_gpu_20251206173155927.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 4 2 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 4 2 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_4_2_false_false_gpu_20251206173155927.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_4_2_false_false_gpu_20251206173155927.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 4 2 false false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 8 1 true true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_8_1_true_true_gpu_20251206173155927.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_8_1_true_true_gpu_20251206173155927.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 8 1 true true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 8 1 true false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_8_1_true_false_gpu_20251206173155927.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_8_1_true_false_gpu_20251206173155927.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 8 1 true false gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 8 1 false true gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_8_1_false_true_gpu_20251206173155927.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_8_1_false_true_gpu_20251206173155927.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 8 1 false true gpu'
sudo rm -rf /data01/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 8 1 false false gpu'
python /data01/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_8_1_false_false_gpu_20251206173155927.txt'
cd /data01/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_qwen3_14b_8_1_false_false_gpu_20251206173155927.txt /data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml gpu /data01/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 8 1 false false gpu'
