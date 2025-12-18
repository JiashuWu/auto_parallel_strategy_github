import time
import subprocess
from datetime import datetime
from config_generator import generate_valid_combinations
from yaml_updater import update_yaml
from env_sh_updater import update_env_sh

card = "npu"

assert card in ["gpu", "npu"]
model_config_gpu = [{"MODEL_TYPE": "deepseek_r1_distill_qwen_7b", "TEMPLATE_YAML_FILE": "/data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml", "OUTPUT_YAML_FILE": "/data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml", "MODEL_DIRECTORY": "/data01/models/DeepSeek-R1-Distill-Qwen-7B"}, 
   					{"MODEL_TYPE": "deepseek_r1_distill_qwen_14b", "TEMPLATE_YAML_FILE": "/data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml", "OUTPUT_YAML_FILE": "/data01/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml", "MODEL_DIRECTORY": "/data01/models/DeepSeek-R1-Distill-Qwen-14B"}, 
					{"MODEL_TYPE": "llama2_7b", "TEMPLATE_YAML_FILE": "/data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/llama2_7b_sft_all_megatron.yaml", "OUTPUT_YAML_FILE": "/data01/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml", "MODEL_DIRECTORY": "/data01/models/Llama-2-7b-hf"}, 
					{"MODEL_TYPE": "qwen2_0.5b", "TEMPLATE_YAML_FILE": "/data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2_0.5b_sft_all_megatron.yaml", "OUTPUT_YAML_FILE": "/data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml", "MODEL_DIRECTORY": "/data01/models/Qwen2-0.5B-Instruct"}, 
					{"MODEL_TYPE": "qwen2.5_7b", "TEMPLATE_YAML_FILE": "/data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_7b_sft_all_megatron.yaml", "OUTPUT_YAML_FILE": "/data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml", "MODEL_DIRECTORY": "/data01/models/Qwen2.5-7B-Instruct"}, 
					{"MODEL_TYPE": "qwen2.5_14b", "TEMPLATE_YAML_FILE": "/data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen2.5_14b_sft_all_megatron.yaml", "OUTPUT_YAML_FILE": "/data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml", "MODEL_DIRECTORY": "/data01/models/Qwen2.5-14B-Instruct"}, 
					{"MODEL_TYPE": "qwen3_4b", "TEMPLATE_YAML_FILE": "/data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_4b_sft_all_megatron.yaml", "OUTPUT_YAML_FILE": "/data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml", "MODEL_DIRECTORY": "/data01/models/Qwen3-4B"}, 
					{"MODEL_TYPE": "qwen3_8b", "TEMPLATE_YAML_FILE": "/data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_8b_sft_all_megatron.yaml", "OUTPUT_YAML_FILE": "/data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml", "MODEL_DIRECTORY": "/data01/models/Qwen3-8B"}, 
					{"MODEL_TYPE": "qwen3_14b", "TEMPLATE_YAML_FILE": "/data01/wujiashu/auto_parallel_strategy/resources/nvidia_yaml/qwen3_14b_sft_all_megatron.yaml", "OUTPUT_YAML_FILE": "/data01/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml", "MODEL_DIRECTORY": "/data01/models/Qwen3-14B"}]

model_config_npu = [{"MODEL_TYPE": "baichuan2_7b", "TEMPLATE_YAML_FILE": "/work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_7b_sft_all_megatron.yaml", "OUTPUT_YAML_FILE": "/work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_7b_sft_all_megatron.yaml", "MODEL_DIRECTORY": "/work/share/models/Baichuan2-7B-Chat"}, 
				    {"MODEL_TYPE": "baichuan2_13b", "TEMPLATE_YAML_FILE": "/work/share/wujiashu/auto_parallel_strategy/resources/baichuan2_13b_sft_all_megatron.yaml", "OUTPUT_YAML_FILE": "/work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/baichuan2/baichuan2_13b_sft_all_megatron.yaml", "MODEL_DIRECTORY": "/work/share/models/Baichuan2-13B-Chat"}, 
				    {"MODEL_TYPE": "deepseek_r1_distill_qwen_7b", "TEMPLATE_YAML_FILE": "/work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml", "OUTPUT_YAML_FILE": "/work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_7b_sft_all_megatron.yaml", "MODEL_DIRECTORY": "/work/share/models/DeepSeek-R1-Distill-Qwen-7B"}, 
   					{"MODEL_TYPE": "deepseek_r1_distill_qwen_14b", "TEMPLATE_YAML_FILE": "/work/share/wujiashu/auto_parallel_strategy/resources/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml", "OUTPUT_YAML_FILE": "/work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/deepseek/deepseek_r1_distill_qwen_14b_sft_all_megatron.yaml", "MODEL_DIRECTORY": "/work/share/models/DeepSeek-R1-Distill-Qwen-14B"}, 
					{"MODEL_TYPE": "glm4_9b", "TEMPLATE_YAML_FILE": "/work/share/wujiashu/auto_parallel_strategy/resources/glm4_9b_sft_all_megatron.yaml", "OUTPUT_YAML_FILE": "/work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/glm4/glm4_9b_sft_all_megatron.yaml", "MODEL_DIRECTORY": "/work/share/models/glm-4-9b-chat"}, 
					{"MODEL_TYPE": "chatglm3_6b", "TEMPLATE_YAML_FILE": "/work/share/wujiashu/auto_parallel_strategy/resources/chatglm3_6b_sft_all_megatron.yaml", "OUTPUT_YAML_FILE": "/work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/chatglm3/chatglm3_6b_sft_all_megatron.yaml", "MODEL_DIRECTORY": "/work/share/models/chatglm3-6b"}, 
					{"MODEL_TYPE": "llama2_7b", "TEMPLATE_YAML_FILE": "/work/share/wujiashu/auto_parallel_strategy/resources/llama2_7b_sft_all_megatron.yaml", "OUTPUT_YAML_FILE": "/work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/llama2/llama2_7b_sft_all_megatron.yaml", "MODEL_DIRECTORY": "/work/share/models/Llama-2-7b-hf"}, 
					{"MODEL_TYPE": "qwen2_0.5b", "TEMPLATE_YAML_FILE": "/work/share/wujiashu/auto_parallel_strategy/resources/qwen2_0.5b_sft_all_megatron.yaml", "OUTPUT_YAML_FILE": "/work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2/qwen2_0.5b_sft_all_megatron.yaml", "MODEL_DIRECTORY": "/work/share/models/Qwen2-0.5B-Instruct"}, 
					{"MODEL_TYPE": "qwen2.5_7b", "TEMPLATE_YAML_FILE": "/work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_7b_sft_all_megatron.yaml", "OUTPUT_YAML_FILE": "/work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_7b_sft_all_megatron.yaml", "MODEL_DIRECTORY": "/work/share/models/Qwen2.5-7B-Instruct"}, 
					{"MODEL_TYPE": "qwen2.5_14b", "TEMPLATE_YAML_FILE": "/work/share/wujiashu/auto_parallel_strategy/resources/qwen2.5_14b_sft_all_megatron.yaml", "OUTPUT_YAML_FILE": "/work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen2_5/qwen2.5_14b_sft_all_megatron.yaml", "MODEL_DIRECTORY": "/work/share/models/Qwen2.5-14B-Instruct"}, 
					{"MODEL_TYPE": "qwen3_4b", "TEMPLATE_YAML_FILE": "/work/share/wujiashu/auto_parallel_strategy/resources/qwen3_4b_sft_all_megatron.yaml", "OUTPUT_YAML_FILE": "/work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_4b_sft_all_megatron.yaml", "MODEL_DIRECTORY": "/work/share/models/Qwen3-4B"}, 
					{"MODEL_TYPE": "qwen3_8b", "TEMPLATE_YAML_FILE": "/work/share/wujiashu/auto_parallel_strategy/resources/qwen3_8b_sft_all_megatron.yaml", "OUTPUT_YAML_FILE": "/work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_8b_sft_all_megatron.yaml", "MODEL_DIRECTORY": "/work/share/models/Qwen3-8B"}, 
					{"MODEL_TYPE": "qwen3_14b", "TEMPLATE_YAML_FILE": "/work/share/wujiashu/auto_parallel_strategy/resources/qwen3_14b_sft_all_megatron.yaml", "OUTPUT_YAML_FILE": "/work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/qwen3/qwen3_14b_sft_all_megatron.yaml", "MODEL_DIRECTORY": "/work/share/models/Qwen3-14B"}, 
					{"MODEL_TYPE": "internlm3_8b", "TEMPLATE_YAML_FILE": "/work/share/wujiashu/auto_parallel_strategy/resources/internlm3_8b_sft_all_megatron.yaml", "OUTPUT_YAML_FILE": "/work/share/wujiashu/TelePost4/telepost4/teleformers/config/models/internlm3/internlm3_8b_sft_all_megatron.yaml", "MODEL_DIRECTORY": "/work/share/models/internlm3-8b-instruct"}]


env_sh_gpu = {"ENV_SH_TEMPLATE": "/data01/wujiashu/auto_parallel_strategy/resources/env_platform.sh", "ENV_SH_OUTPUT": "/data01/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh"}
env_sh_npu = {"ENV_SH_TEMPLATE": "/work/share/wujiashu/auto_parallel_strategy/resources/env_platform.sh", "ENV_SH_OUTPUT": "/work/share/wujiashu/TelePost4/telepost4/teleformers/bin/env_platform.sh"}
exec_dir_gpu = "/data01/wujiashu/auto_parallel_strategy/resources/"
exec_dir_npu = "/work/share/wujiashu/auto_parallel_strategy/resources/"
work_dir_gpu = "/data01/wujiashu/TelePost4/telepost4/teleformers/"
work_dir_npu = "/work/share/wujiashu/TelePost4/telepost4/teleformers/"
log_dir_gpu = "/data01/wujiashu/TelePost4/telepost4/teleformers/paper_logs/"
log_dir_npu = "/work/share/wujiashu/TelePost4/telepost4/teleformers/paper_logs/"

valid_combinations = generate_valid_combinations()

if card == "gpu":
	model_config = model_config_gpu
	env_sh_config = env_sh_gpu
	exec_dir = exec_dir_gpu
	work_dir = work_dir_gpu
	log_dir = log_dir_gpu
else:
	model_config = model_config_npu
	env_sh_config = env_sh_npu
	exec_dir = exec_dir_npu
	work_dir = work_dir_npu
	log_dir = log_dir_npu

#print("model_config: {}".format(model_config))
#print("env_sh_config: {}".format(env_sh_config))
#print("exec_dir: {}".format(exec_dir))
#print("work_dir: {}".format(work_dir))
#print("log_dir: {}".format(log_dir))

for model_config_item in model_config:
	#env_sh_replacements = {
    #    'SUBSTITUTION_MODEL_DIR': model_config_item["MODEL_DIRECTORY"],
    #    'SUBSTITUTION_MODEL_TYPE': model_config_item["MODEL_TYPE"]
    #}
	print("python {}env_sh_updater.py --template_sh_file {} --output_sh_file {} --SUBSTITUTION_MODEL_DIR {} --SUBSTITUTION_MODEL_TYPE {}".format(exec_dir, 
			env_sh_config["ENV_SH_TEMPLATE"], 
			env_sh_config["ENV_SH_OUTPUT"], 
			model_config_item["MODEL_DIRECTORY"], 
			model_config_item["MODEL_TYPE"]))
	#update_env_sh(env_sh_config["ENV_SH_TEMPLATE"], env_sh_config["ENV_SH_OUTPUT"], env_sh_replacements)
	for combination in valid_combinations:
		#combination_replacements = {
	    #    'SUBSTITUTION_TP': str(combination["SUBSTITUTION_TP"]),
	    #    'SUBSTITUTION_PP': str(combination["SUBSTITUTION_PP"]),
	    #    'SUBSTITUTION_SP': combination["SUBSTITUTION_SP"],
	    #    'SUBSTITUTION_OP': combination["SUBSTITUTION_OP"]
	    #}
		print("sudo rm -rf {}output*".format(work_dir))
		print("echo 'Start running {} {} {} {} {} {}'".format(model_config_item["MODEL_TYPE"], combination["SUBSTITUTION_TP"], combination["SUBSTITUTION_PP"], combination["SUBSTITUTION_SP"], combination["SUBSTITUTION_OP"], card))
		print("python {}yaml_updater.py --template_yaml_file {} --output_yaml_file {} --SUBSTITUTION_TP {} --SUBSTITUTION_PP {} --SUBSTITUTION_SP {} --SUBSTITUTION_OP {}".format(exec_dir, 
			model_config_item["TEMPLATE_YAML_FILE"], 
			model_config_item["OUTPUT_YAML_FILE"], 
			str(combination["SUBSTITUTION_TP"]), 
			str(combination["SUBSTITUTION_PP"]), 
			combination["SUBSTITUTION_SP"], 
			combination["SUBSTITUTION_OP"]))
		#update_yaml(model_config_item["TEMPLATE_YAML_FILE"], model_config_item["OUTPUT_YAML_FILE"], combination_replacements)

		now = datetime.now()
		timestamp = now.strftime("%Y%m%d%H%M%S") + f"{now.microsecond // 1000:03d}"
		log_full_path = "{}{}".format(log_dir, "log_{}_{}_{}_{}_{}_{}_{}.txt".format(model_config_item["MODEL_TYPE"].replace(".", ""), combination["SUBSTITUTION_TP"], combination["SUBSTITUTION_PP"], combination["SUBSTITUTION_SP"], combination["SUBSTITUTION_OP"], card, timestamp))
		print("echo '{}'".format(log_full_path))

		print("cd {} && bash runner.sh {} {} {} {} {}".format(exec_dir, log_full_path, env_sh_config["ENV_SH_OUTPUT"], model_config_item["OUTPUT_YAML_FILE"], card, work_dir))
		#script_path = exec_dir + "runner.sh"
		#args = [log_full_path, env_sh_config["ENV_SH_OUTPUT"], model_config_item["OUTPUT_YAML_FILE"], card, work_dir]
		#cmd = [
		#	"bash",
		#	"-c",
		#	f'{script_path} {" ".join(args)}; wait'
		#]
		
		#subprocess.run(
		#	cmd, 
		#	capture_output=True,
		#	text=True,
		#	check=True
		#)		
		print("echo 'Finish running {} {} {} {} {} {}'".format(model_config_item["MODEL_TYPE"], combination["SUBSTITUTION_TP"], combination["SUBSTITUTION_PP"], combination["SUBSTITUTION_SP"], combination["SUBSTITUTION_OP"], card))
		