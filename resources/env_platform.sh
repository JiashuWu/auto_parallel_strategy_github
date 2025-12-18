# 平台注入参数
export TOLERANCE=false                    # 优雅容错开关

# 数据相关
export DATASET_PATH=${CODE_BASE_DIR}/data
# 平台特定三元组（平台精调测试需要打开）
# export DATASET_FILE=original_data.json     # 需要修改
# export DATASET_TRANS_PATH=${CODE_BASE_DIR}/data_trans

# yaml环境变量
export MODEL_DIR='SUBSTITUTION_MODEL_DIR'
export EPOCHS=2
export GLOBAL_BATCH_SIZE=16
export MICRO_BATCH_SIZE=1
export LEARNING_RATE=1.e-5
export FINETUNE_MODEL_TYPE=SUBSTITUTION_MODEL_TYPE
export FINETUNING_TYPE=ALL  # LORA, ALL, FREEZE

export ORIGINAL_OUTPUT_DIR=${CODE_BASE_DIR}/output/${FINETUNE_MODEL_TYPE}_${FINETUNING_TYPE}
export FORMAT_OUTPUT_DIR=${CODE_BASE_DIR}/output/models/${FINETUNE_MODEL_TYPE}_${FINETUNING_TYPE}

# 日志输出路径
export LOG_DIR=${CODE_BASE_DIR}/output_log/${FINETUNE_MODEL_TYPE}_${FINETUNING_TYPE}/$(date +"%m%d-%H%M")

# megatron convert ckpt
if [ "$DISTRIBUTE" == "megatron" ]; then
    export TRANS_MODEL_BASE_PATH=${CODE_BASE_DIR}/output/${FINETUNE_MODEL_TYPE}_${FINETUNING_TYPE}/model_trans
fi
