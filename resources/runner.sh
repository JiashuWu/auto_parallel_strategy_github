#!/bin/bash

# 定义日志文件路径
LOG_FILE="$1"

# 清空原有日志（可选，若需要追加则注释此行）
> "$LOG_FILE"

echo -e "===================log_file=====================\n" >> "$LOG_FILE"
echo "$1" >> "$LOG_FILE"
echo -e "\n========================================\n" >> "$LOG_FILE"

echo -e "===================env_platform.sh=====================\n" >> "$LOG_FILE"
cat "$2" >> "$LOG_FILE"
echo -e "\n========================================\n" >> "$LOG_FILE"

echo -e "===================yaml=====================\n" >> "$LOG_FILE"
cat "$3" >> "$LOG_FILE"
echo -e "\n========================================\n" >> "$LOG_FILE"

card="$4"
if [ "$card" = "gpu" ]; then
    card_command="nvidia-smi"
else
    card_command="npu-smi info"
fi

cd "$5" || { echo "目录切换失败: $5" >> "$LOG_FILE"; exit 1; }
echo "[$(date)] 开始执行主任务: bash run.sh" >> "$LOG_FILE"
bash run.sh >> "$LOG_FILE" 2>&1 &
MAIN_PID=$!

echo "[$(date)] 开始监控，主任务PID: $MAIN_PID" >> "$LOG_FILE"
while kill -0 "$MAIN_PID" 2>/dev/null; do
    # 执行date和卡信息命令，输出到日志
    {
        echo -e "\n========================================\n"
        date
        echo "----------------------------------------"
        eval "$card_command"
        echo -e "\n========================================\n"
    } >> "$LOG_FILE" 2>&1
    
    sleep 1
done

echo "[$(date)] 主任务执行完毕 (PID: $MAIN_PID)" >> "$LOG_FILE"
echo "所有输出已保存至: $LOG_FILE"