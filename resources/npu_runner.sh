python /work/share/wujiashu/auto_parallel_strategy/resources/env_sh_updater.py --template_sh_file /work/share/wujiashu/auto_parallel_strategy/resources/env_platform.sh --output_sh_file /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh --SUBSTITUTION_MODEL_DIR /work/share/models/Baichuan2-7B-Chat --SUBSTITUTION_MODEL_TYPE baichuan2_7b
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 1 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_true_npu_20251205204637862.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_true_npu_20251205204637862.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 1 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 1 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_false_npu_20251205204637862.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_false_npu_20251205204637862.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 1 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 1 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_true_npu_20251205204637862.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_true_npu_20251205204637862.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 1 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 1 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_false_npu_20251205204637862.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_false_npu_20251205204637862.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 1 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 1 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_true_npu_20251205204637862.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_true_npu_20251205204637862.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 1 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 1 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_false_npu_20251205204637862.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_false_npu_20251205204637862.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 1 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 1 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_true_npu_20251205204637862.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_true_npu_20251205204637862.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 1 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 1 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_false_npu_20251205204637862.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_false_npu_20251205204637862.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 1 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 1 4 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_true_npu_20251205204637862.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_true_npu_20251205204637862.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 1 4 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 1 4 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_false_npu_20251205204637862.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_false_npu_20251205204637862.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 1 4 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 1 4 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_true_npu_20251205204637862.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_true_npu_20251205204637862.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 1 4 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 1 4 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_false_npu_20251205204637862.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_false_npu_20251205204637862.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 1 4 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 1 8 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_true_npu_20251205204637862.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_true_npu_20251205204637862.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 1 8 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 1 8 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_false_npu_20251205204637862.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_false_npu_20251205204637862.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 1 8 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 1 8 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_true_npu_20251205204637862.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_true_npu_20251205204637862.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 1 8 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 1 8 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_false_npu_20251205204637862.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_false_npu_20251205204637862.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 1 8 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 2 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_true_npu_20251205204637862.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_true_npu_20251205204637862.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 2 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 2 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_false_npu_20251205204637862.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_false_npu_20251205204637862.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 2 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 2 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_true_npu_20251205204637862.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_true_npu_20251205204637862.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 2 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 2 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_false_npu_20251205204637862.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_false_npu_20251205204637862.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 2 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 2 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_true_npu_20251205204637862.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_true_npu_20251205204637862.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 2 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 2 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_false_npu_20251205204637862.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_false_npu_20251205204637862.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 2 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 2 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_true_npu_20251205204637862.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_true_npu_20251205204637862.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 2 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 2 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_false_npu_20251205204637862.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_false_npu_20251205204637862.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 2 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 2 4 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_true_npu_20251205204637862.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_true_npu_20251205204637862.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 2 4 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 2 4 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_false_npu_20251205204637862.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_false_npu_20251205204637862.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 2 4 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 2 4 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_true_npu_20251205204637862.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_true_npu_20251205204637862.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 2 4 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 2 4 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_false_npu_20251205204637862.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_false_npu_20251205204637862.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 2 4 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 4 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 4 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 4 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 4 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 4 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 4 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 4 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 4 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 4 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 4 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 4 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 4 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 4 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 4 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 4 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 4 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 8 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 8 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 8 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 8 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 8 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 8 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_7b 8 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_7b 8 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/env_sh_updater.py --template_sh_file /work/share/wujiashu/auto_parallel_strategy/resources/env_platform.sh --output_sh_file /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh --SUBSTITUTION_MODEL_DIR /work/share/models/Baichuan2-13B-Chat --SUBSTITUTION_MODEL_TYPE baichuan2_13b
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 1 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 1 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 1 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 1 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 1 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 1 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 1 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 1 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 1 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 1 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 1 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 1 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 1 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 1 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 1 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 1 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 1 4 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 1 4 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 1 4 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 1 4 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 1 4 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 1 4 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 1 4 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 1 4 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 1 8 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 1 8 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 1 8 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 1 8 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 1 8 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 1 8 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 1 8 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 1 8 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 2 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 2 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 2 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 2 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 2 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 2 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 2 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 2 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 2 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 2 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 2 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 2 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 2 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 2 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 2 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 2 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 2 4 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 2 4 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 2 4 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 2 4 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 2 4 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 2 4 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 2 4 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 2 4 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 4 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 4 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 4 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 4 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 4 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 4 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 4 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 4 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 4 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 4 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 4 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 4 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 4 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 4 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 4 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 4 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 8 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 8 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 8 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 8 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 8 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 8 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running baichuan2_13b 8 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running baichuan2_13b 8 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/env_sh_updater.py --template_sh_file /work/share/wujiashu/auto_parallel_strategy/resources/env_platform.sh --output_sh_file /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh --SUBSTITUTION_MODEL_DIR /work/share/models/DeepSeek-R1-Distill-Qwen-7B --SUBSTITUTION_MODEL_TYPE deepseek_r1_distill_qwen_7b
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 1 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 1 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 1 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 1 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 1 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 1 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 1 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 1 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 1 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 1 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 1 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 1 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 1 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 1 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 1 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 1 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 1 4 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 1 4 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 1 4 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 1 4 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 1 4 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 1 4 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 1 4 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 1 4 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 1 8 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 1 8 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 1 8 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 1 8 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 1 8 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 1 8 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 1 8 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 1 8 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 2 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 2 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 2 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 2 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 2 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 2 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 2 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 2 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 2 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_true_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_true_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 2 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 2 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_false_npu_20251205204637863.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_false_npu_20251205204637863.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 2 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 2 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 2 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 2 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 2 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 2 4 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 2 4 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 2 4 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 2 4 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 2 4 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 2 4 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 2 4 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 2 4 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 4 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 4 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 4 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 4 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 4 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 4 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 4 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 4 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 4 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 4 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 4 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 4 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 4 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 4 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 4 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 4 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 8 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 8 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 8 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 8 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 8 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 8 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_7b 8 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_7b 8 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/env_sh_updater.py --template_sh_file /work/share/wujiashu/auto_parallel_strategy/resources/env_platform.sh --output_sh_file /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh --SUBSTITUTION_MODEL_DIR /work/share/models/DeepSeek-R1-Distill-Qwen-14B --SUBSTITUTION_MODEL_TYPE deepseek_r1_distill_qwen_14b
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 1 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 1 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 1 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 1 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 1 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 1 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 1 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 1 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 1 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 1 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 1 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 1 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 1 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 1 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 1 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 1 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 1 4 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 1 4 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 1 4 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 1 4 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 1 4 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 1 4 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 1 4 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 1 4 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 1 8 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 1 8 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 1 8 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 1 8 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 1 8 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 1 8 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 1 8 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 1 8 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 2 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 2 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 2 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 2 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 2 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 2 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 2 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 2 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 2 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 2 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 2 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 2 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 2 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 2 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 2 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 2 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 2 4 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 2 4 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 2 4 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 2 4 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 2 4 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 2 4 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 2 4 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 2 4 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 4 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 4 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 4 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 4 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 4 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 4 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 4 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 4 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 4 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 4 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 4 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 4 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 4 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 4 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 4 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 4 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 8 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 8 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 8 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 8 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 8 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 8 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running deepseek_r1_distill_qwen_14b 8 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running deepseek_r1_distill_qwen_14b 8 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/env_sh_updater.py --template_sh_file /work/share/wujiashu/auto_parallel_strategy/resources/env_platform.sh --output_sh_file /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh --SUBSTITUTION_MODEL_DIR /work/share/models/glm-4-9b-chat --SUBSTITUTION_MODEL_TYPE glm4_9b
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 1 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 1 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 1 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 1 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 1 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 1 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 1 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 1 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 1 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 1 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 1 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 1 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 1 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 1 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 1 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 1 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 1 4 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 1 4 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 1 4 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 1 4 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 1 4 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 1 4 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 1 4 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 1 4 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 1 8 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 1 8 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 1 8 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 1 8 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 1 8 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 1 8 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 1 8 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 1 8 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 2 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_true_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_true_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 2 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 2 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_false_npu_20251205204637864.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_false_npu_20251205204637864.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 2 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 2 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 2 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 2 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 2 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 2 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 2 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 2 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 2 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 2 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 2 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 2 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 2 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 2 4 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 2 4 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 2 4 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 2 4 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 2 4 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 2 4 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 2 4 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 2 4 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 4 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 4 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 4 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 4 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 4 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 4 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 4 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 4 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 4 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 4 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 4 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 4 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 4 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 4 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 4 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 4 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 8 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 8 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 8 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 8 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 8 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 8 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running glm4_9b 8 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running glm4_9b 8 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/env_sh_updater.py --template_sh_file /work/share/wujiashu/auto_parallel_strategy/resources/env_platform.sh --output_sh_file /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh --SUBSTITUTION_MODEL_DIR /work/share/models/chatglm3-6b --SUBSTITUTION_MODEL_TYPE chatglm3_6b
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 1 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 1 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 1 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 1 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 1 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 1 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 1 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 1 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 1 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 1 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 1 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 1 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 1 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 1 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 1 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 1 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 1 4 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 1 4 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 1 4 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 1 4 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 1 4 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 1 4 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 1 4 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 1 4 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 1 8 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 1 8 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 1 8 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 1 8 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 1 8 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 1 8 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 1 8 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 1 8 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 2 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 2 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 2 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 2 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 2 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 2 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 2 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 2 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 2 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 2 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 2 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 2 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 2 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 2 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 2 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 2 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 2 4 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 2 4 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 2 4 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 2 4 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 2 4 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 2 4 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 2 4 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 2 4 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 4 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 4 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 4 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 4 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 4 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 4 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 4 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 4 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 4 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 4 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 4 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 4 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 4 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 4 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 4 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 4 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 8 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 8 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 8 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 8 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 8 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 8 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running chatglm3_6b 8 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running chatglm3_6b 8 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/env_sh_updater.py --template_sh_file /work/share/wujiashu/auto_parallel_strategy/resources/env_platform.sh --output_sh_file /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh --SUBSTITUTION_MODEL_DIR /work/share/models/Llama-2-7b-hf --SUBSTITUTION_MODEL_TYPE llama2_7b
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 1 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 1 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 1 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 1 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 1 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 1 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 1 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 1 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 1 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 1 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 1 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 1 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 1 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 1 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 1 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 1 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 1 4 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 1 4 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 1 4 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 1 4 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 1 4 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 1 4 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 1 4 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_false_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_false_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 1 4 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 1 8 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_true_npu_20251205204637865.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_true_npu_20251205204637865.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 1 8 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 1 8 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 1 8 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 1 8 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 1 8 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 1 8 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 1 8 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 2 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 2 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 2 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 2 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 2 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 2 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 2 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 2 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 2 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 2 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 2 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 2 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 2 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 2 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 2 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 2 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 2 4 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 2 4 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 2 4 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 2 4 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 2 4 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 2 4 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 2 4 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 2 4 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 4 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 4 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 4 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 4 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 4 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 4 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 4 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 4 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 4 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 4 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 4 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 4 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 4 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 4 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 4 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 4 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 8 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 8 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 8 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 8 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 8 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 8 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running llama2_7b 8 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running llama2_7b 8 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/env_sh_updater.py --template_sh_file /work/share/wujiashu/auto_parallel_strategy/resources/env_platform.sh --output_sh_file /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh --SUBSTITUTION_MODEL_DIR /work/share/models/Qwen2-0.5B-Instruct --SUBSTITUTION_MODEL_TYPE qwen2_0.5b
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 1 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 1 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 1 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 1 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 1 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 1 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 1 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 1 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 1 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 1 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 1 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 1 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 1 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 1 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 1 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 1 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 1 4 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 1 4 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 1 4 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 1 4 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 1 4 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 1 4 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 1 4 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 1 4 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 1 8 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 1 8 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 1 8 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 1 8 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 1 8 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 1 8 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 1 8 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 1 8 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 2 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 2 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 2 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 2 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 2 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 2 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 2 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 2 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 2 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 2 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 2 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 2 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 2 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 2 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 2 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 2 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 2 4 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 2 4 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 2 4 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 2 4 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 2 4 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 2 4 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 2 4 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 2 4 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 4 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 4 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 4 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 4 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 4 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 4 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 4 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 4 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 4 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 4 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 4 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 4 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 4 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 4 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 4 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 4 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 8 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 8 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 8 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 8 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 8 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 8 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2_0.5b 8 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2_0.5b 8 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/env_sh_updater.py --template_sh_file /work/share/wujiashu/auto_parallel_strategy/resources/env_platform.sh --output_sh_file /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh --SUBSTITUTION_MODEL_DIR /work/share/models/Qwen2.5-7B-Instruct --SUBSTITUTION_MODEL_TYPE qwen2.5_7b
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 1 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 1 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 1 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 1 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 1 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 1 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 1 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 1 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 1 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 1 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 1 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 1 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 1 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_true_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_true_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 1 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 1 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_false_npu_20251205204637866.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_false_npu_20251205204637866.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 1 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 1 4 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 1 4 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 1 4 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 1 4 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 1 4 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 1 4 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 1 4 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 1 4 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 1 8 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 1 8 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 1 8 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 1 8 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 1 8 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 1 8 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 1 8 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 1 8 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 2 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 2 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 2 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 2 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 2 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 2 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 2 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 2 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 2 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 2 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 2 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 2 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 2 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 2 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 2 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 2 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 2 4 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 2 4 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 2 4 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 2 4 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 2 4 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 2 4 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 2 4 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 2 4 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 4 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 4 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 4 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 4 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 4 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 4 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 4 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 4 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 4 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 4 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 4 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 4 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 4 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 4 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 4 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 4 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 8 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 8 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 8 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 8 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 8 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 8 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_7b 8 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_7b 8 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/env_sh_updater.py --template_sh_file /work/share/wujiashu/auto_parallel_strategy/resources/env_platform.sh --output_sh_file /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh --SUBSTITUTION_MODEL_DIR /work/share/models/Qwen2.5-14B-Instruct --SUBSTITUTION_MODEL_TYPE qwen2.5_14b
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 1 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 1 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 1 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 1 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 1 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 1 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 1 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 1 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 1 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 1 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 1 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 1 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 1 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 1 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 1 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 1 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 1 4 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 1 4 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 1 4 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 1 4 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 1 4 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 1 4 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 1 4 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 1 4 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 1 8 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 1 8 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 1 8 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 1 8 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 1 8 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 1 8 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 1 8 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 1 8 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 2 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 2 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 2 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 2 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 2 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 2 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 2 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 2 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 2 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 2 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 2 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 2 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 2 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 2 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 2 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 2 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 2 4 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 2 4 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 2 4 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 2 4 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 2 4 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 2 4 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 2 4 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 2 4 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 4 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 4 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 4 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 4 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 4 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 4 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 4 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 4 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 4 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 4 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 4 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 4 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 4 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 4 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 4 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 4 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 8 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 8 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 8 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 8 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 8 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 8 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen2.5_14b 8 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen2.5_14b 8 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/env_sh_updater.py --template_sh_file /work/share/wujiashu/auto_parallel_strategy/resources/env_platform.sh --output_sh_file /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh --SUBSTITUTION_MODEL_DIR /work/share/models/Qwen3-4B --SUBSTITUTION_MODEL_TYPE qwen3_4b
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 1 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 1 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 1 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 1 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 1 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_true_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_true_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 1 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 1 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_false_npu_20251205204637867.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_false_npu_20251205204637867.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 1 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 1 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 1 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 1 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 1 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 1 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 1 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 1 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 1 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 1 4 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 1 4 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 1 4 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 1 4 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 1 4 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 1 4 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 1 4 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 1 4 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 1 8 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 1 8 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 1 8 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 1 8 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 1 8 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 1 8 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 1 8 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 1 8 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 2 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 2 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 2 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 2 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 2 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 2 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 2 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 2 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 2 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 2 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 2 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 2 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 2 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 2 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 2 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 2 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 2 4 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 2 4 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 2 4 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 2 4 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 2 4 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 2 4 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 2 4 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 2 4 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 4 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 4 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 4 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 4 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 4 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 4 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 4 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 4 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 4 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 4 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 4 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 4 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 4 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 4 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 4 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 4 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 8 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 8 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 8 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 8 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 8 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 8 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_4b 8 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_4b 8 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/env_sh_updater.py --template_sh_file /work/share/wujiashu/auto_parallel_strategy/resources/env_platform.sh --output_sh_file /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh --SUBSTITUTION_MODEL_DIR /work/share/models/Qwen3-8B --SUBSTITUTION_MODEL_TYPE qwen3_8b
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 1 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 1 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 1 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 1 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 1 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 1 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 1 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 1 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 1 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 1 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 1 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 1 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 1 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 1 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 1 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 1 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 1 4 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 1 4 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 1 4 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 1 4 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 1 4 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 1 4 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 1 4 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 1 4 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 1 8 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 1 8 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 1 8 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 1 8 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 1 8 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 1 8 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 1 8 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 1 8 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 2 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 2 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 2 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 2 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 2 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 2 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 2 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 2 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 2 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 2 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 2 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 2 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 2 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 2 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 2 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 2 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 2 4 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 2 4 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 2 4 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 2 4 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 2 4 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 2 4 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 2 4 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 2 4 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 4 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 4 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 4 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 4 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 4 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 4 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 4 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 4 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 4 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 4 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 4 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 4 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 4 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 4 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 4 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 4 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 8 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 8 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 8 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 8 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 8 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 8 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_8b 8 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_false_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_false_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_8b 8 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/env_sh_updater.py --template_sh_file /work/share/wujiashu/auto_parallel_strategy/resources/env_platform.sh --output_sh_file /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh --SUBSTITUTION_MODEL_DIR /work/share/models/Qwen3-14B --SUBSTITUTION_MODEL_TYPE qwen3_14b
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 1 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_true_npu_20251205204637868.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_true_npu_20251205204637868.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 1 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 1 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 1 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 1 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 1 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 1 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 1 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 1 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 1 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 1 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 1 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 1 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 1 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 1 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 1 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 1 4 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 1 4 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 1 4 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 1 4 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 1 4 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 1 4 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 1 4 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 1 4 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 1 8 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 1 8 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 1 8 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 1 8 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 1 8 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 1 8 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 1 8 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 1 8 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 2 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 2 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 2 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 2 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 2 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 2 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 2 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 2 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 2 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 2 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 2 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 2 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 2 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 2 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 2 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 2 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 2 4 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 2 4 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 2 4 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 2 4 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 2 4 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 2 4 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 2 4 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 2 4 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 4 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 4 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 4 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 4 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 4 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 4 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 4 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 4 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 4 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 4 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 4 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 4 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 4 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 4 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 4 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 4 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 8 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 8 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 8 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 8 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 8 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 8 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running qwen3_14b 8 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running qwen3_14b 8 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/env_sh_updater.py --template_sh_file /work/share/wujiashu/auto_parallel_strategy/resources/env_platform.sh --output_sh_file /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh --SUBSTITUTION_MODEL_DIR /work/share/models/internlm3-8b-instruct --SUBSTITUTION_MODEL_TYPE internlm3_8b
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 1 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 1 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 1 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_true_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 1 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 1 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 1 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 1 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_1_false_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 1 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 1 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 1 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 1 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_true_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 1 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 1 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 1 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 1 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_2_false_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 1 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 1 4 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 1 4 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 1 4 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_true_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 1 4 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 1 4 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 1 4 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 1 4 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_4_false_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 1 4 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 1 8 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 1 8 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 1 8 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_true_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 1 8 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 1 8 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 1 8 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 1 8 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 1 --SUBSTITUTION_PP 8 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_1_8_false_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 1 8 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 2 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 2 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 2 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_true_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 2 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 2 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 2 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 2 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_1_false_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 2 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 2 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 2 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 2 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_true_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 2 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 2 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 2 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 2 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_2_false_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 2 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 2 4 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 2 4 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 2 4 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_true_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 2 4 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 2 4 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 2 4 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 2 4 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 2 --SUBSTITUTION_PP 4 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_2_4_false_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 2 4 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 4 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 4 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 4 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_true_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 4 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 4 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 4 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 4 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_1_false_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 4 1 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 4 2 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 4 2 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 4 2 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_true_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 4 2 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 4 2 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 4 2 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 4 2 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 4 --SUBSTITUTION_PP 2 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_false_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_4_2_false_false_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 4 2 false false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 8 1 true true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_true_npu_20251205204637869.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_true_npu_20251205204637869.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 8 1 true true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 8 1 true false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP true --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_false_npu_20251205204637870.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_true_false_npu_20251205204637870.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 8 1 true false npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 8 1 false true npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP true
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_true_npu_20251205204637870.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_true_npu_20251205204637870.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 8 1 false true npu'
sudo rm -rf /work/share/wujiashu/TelePost4/telepost4/teleformers/output*
echo 'Start running internlm3_8b 8 1 false false npu'
python /work/share/wujiashu/auto_parallel_strategy/resources/yaml_updater.py --template_yaml_file /work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml --output_yaml_file /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml --SUBSTITUTION_TP 8 --SUBSTITUTION_PP 1 --SUBSTITUTION_SP false --SUBSTITUTION_OP false
echo '/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_false_npu_20251205204637870.txt'
cd /work/share/wujiashu/auto_parallel_strategy/resources/ && bash runner.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/log_8_1_false_false_npu_20251205204637870.txt /work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh /work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml npu /work/share/wujiashu/TelePost4/telepost4/teleformers/
echo 'Finish running internlm3_8b 8 1 false false npu'
