# 防止上一次的任务进程未退出
pkill -9 pt_main_thread
pkill -9 python

# HCCL相关超时时长配置
export HCCL_CONNECT_TIMEOUT=600
export HCCL_EXEC_TIMEOUT=600
export MS_NODE_TIMEOUT=900

# HCCL预留若干ports，解决大集群训练概率性端口占用错误
sysctl -w net.ipv4.ip_local_reserved_ports=30000-30015
export HCCL_IF_BASE_PORT=30000
echo "backlog ini:"
sysctl -a net.ipv4.tcp_max_syn_backlog | grep backlog

# 解决HCCL GROUP超时问题
sysctl -w net.core.somaxconn=65535
sysctl -w net.ipv4.tcp_max_syn_backlog=65535

# 配置HCCL初始化Host侧root通信网卡名，HCCL可通过该网卡名获取Host IP，完成通信域创建
# 多机组网Socket Timeout时通过ifconfig排查Host IP是否与网卡匹配，若不匹配，请显式指定
# export HCCL_SOCKET_IFNAME=bond0
# export HCCL_SOCKET_IFNAME==bond0.150

# plog日志重定向、日志打屏、日志级别等配置，供深度错误排查
# export ASCEND_PROCESS_LOG_PATH=${CODE_BASE_DIR}/plog/${HOST_NAME}
# export ASCEND_SLOG_PRINT_TO_STDOUT=1
# export ASCEND_GLOBAL_LOG_LEVEL=3

# 平台环境变量
export CODE_BASE_DIR=$(pwd)
export TRAIN_MODE=sft                      # 任务模式：pt/sft等
export DISTRIBUTE='megatron'    # ds_zero0, ds_zero1, ds_zero2, ds_zero3, ds_zero2_offload, ds_zero3_offload, megatron, ddp
source ${CODE_BASE_DIR}/bin/env_platform.sh
# # LOCAL_WORLD_SIZE/PET_NNODES为平台任务注入，本地调试需自己修改数值
# export NPROC_PER_NODE=${LOCAL_WORLD_SIZE}     # 单节点卡数
# export NNODES=${PET_NNODES}                     # 总节点数

# 平台选择DDP模式，Master + Worker会自动注入以下参数（IDE单机调试使用,分布式需注释）
export MASTER_PORT=23456                  # Master端口号
#export MASTER_ADDR=127.0.0.1              # Master节点IP
#export RANK=0                             # 节点RANK
export NPROC_PER_NODE=4     # 单节点卡数
export NNODES=1                   # 总节点数

HOST_NAME=$(hostname | awk '{print $1}')
export LOG_FILE=${LOG_DIR}/${HOST_NAME}_$(date +"%H%M").log      # 专业模式，时间戳方便定位日志
# export LOG_FILE=${LOG_DIR}/${HOST_NAME}.log                 # 对接平台日志

# 日志/ckpt/模型输出路径
mkdir -p $LOG_DIR
mkdir -p $ORIGINAL_OUTPUT_DIR
mkdir -p $FORMAT_OUTPUT_DIR

rm -rf kernel_meta*

# 优雅容错判断
if [ "$TOLERANCE" != "true" ]; then
    bash bin/train.sh
else
    bash bin/train.sh &
    pid=$!
    echo "pid: $pid"

    python -u teleformers/tolerance/reset_process.py -p "${pid}" &
    reset_pid=$!

    wait ${pid}
    exit_code=$?        # pid exit code
    if [ ${exit_code} -eq 0 ]; then
        kill -15 ${reset_pid}
        echo "training finished."
        exit ${exit_code}
    else
        wait ${reset_pid}
        reset_exit_code=$?
        if [ ${reset_exit_code} -ne 0 ]; then
            exit ${reset_exit_code}
        fi
    fi
fi
