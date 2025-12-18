import os
import re
import numpy as np
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from scipy import stats
from collections import defaultdict
from statsmodels.stats.weightstats import ztest
from scipy.stats import ttest_ind
from scipy.stats import f_oneway

from constant import NUM_GPUS_PER_NODE
from once_test import test_once

def read_all_txt_files(folder_path):
    # 检查文件夹路径是否存在
    if not os.path.exists(folder_path):
        raise Exception(f"Error: folder '{folder_path}' does not exist. ")
        return

    # 检查路径是否是文件夹
    if not os.path.isdir(folder_path):
        raise Exception(f"Error: folder '{folder_path}' is not a valid directory. ")
        return

    # 获取文件夹内所有文件
    file_list = os.listdir(folder_path)
    file_list = sorted(file_list)

    # 过滤出txt文件（区分大小写，如需不区分可改为.lower()）
    txt_files = [f for f in file_list if f.endswith('.txt')]

    if not txt_files:
        raise Exception(f"Error: Directory '{folder_path}' does not have any txt files. ")
        return

    # 依次读取每个txt文件
    success = 0
    valueerror = 0
    assertionerror = 0
    runtimeerror = 0
    oom = 0
    accurate_prediction_counter = 0
    accurate_classification_counter = 0
    RUNTIME_OVERHEAD_NPU_GB = 2.5 # 2.5GB of Runtime + driver + kernel cache overhead (per process)
    RUNTIME_OVERHEAD_GPU_GB = 2.5
    ALLOCATOR_OVERHEAD_RATIO_NPU = 1.2 # allocator inflation factor
    ALLOCATOR_OVERHEAD_RATIO_GPU = 1.2 # allocator inflation factor
    TOLERANCE_RATIO = 0.1
    result_list = []
    for index, filename in enumerate(txt_files, 1):
        # print("=" * 50)
        # print(f"第 {index} 个文件")
        # print(f"文件名：{filename}")

        # 拼接完整文件路径
        file_full_path = os.path.join(folder_path, filename)
        model_name, tp, pp, sp, op, card = filename_analyser(filename)
        assert NUM_GPUS_PER_NODE == 8
        dp = int(NUM_GPUS_PER_NODE / (tp * pp))
        group = filepath_analyser(folder_path)

        try:
            with open(file_full_path, 'r', encoding='utf-8') as file:
                content = file.read()
                has_external_program = examine_external_program(content, card)
                if has_external_program:
                    raise Exception("Illegal external program exists. ")
                elif "/usr/local/bin/python" in content:
                    raise Exception("Illegal external process exists. ")
                elif "ValueError" and "must be a multiple of" in content:
                    valueerror += 1
                    #print("Illegal 5d config, possibly caused by illegal tp")
                    memory = None
                    gbs, mbs, seq_length, num_attention_heads, num_query_groups, _, _ = extract_train_metrics(content, oom=True)
                    time_per_iter_mean, tflops_mean = None, None
                    status = "valueerror"
                    estimated_peak_memory_per_gpu, latency_per_iter_in_sec, predicted_status = prediction_analyser(
                        model_name, card, gbs, mbs, seq_length, tp, pp, dp, sp, op, num_attention_heads, num_query_groups)
                    if predicted_status == "valueerror":
                        accurate_prediction_counter += 1
                        accurate_classification_counter += 1
                        RUNTIME_OVERHEAD_GB, ALLOCATOR_OVERHEAD_RATIO = None, None
                        this_case_accurately_predicted, this_case_accurately_classified = True, True
                        real_predicted_memory_ratio, real_adjusted_predicted_memory_ratio = 1, 1
                    else:
                        RUNTIME_OVERHEAD_GB, ALLOCATOR_OVERHEAD_RATIO = None, None
                        this_case_accurately_predicted, this_case_accurately_classified = False, False
                        real_predicted_memory_ratio, real_adjusted_predicted_memory_ratio = None, None
                elif "AssertionError: Param should not be in param_gbuf_map; each param only belongs to a single bucket" in content:
                    assertionerror += 1
                    #print("AssertionError: Param should not be in param_gbuf_map; each param only belongs to a single bucket")
                    memory = None
                    gbs, mbs, seq_length, num_attention_heads, num_query_groups, _, _ = extract_train_metrics(content, oom=True)
                    time_per_iter_mean, tflops_mean = None, None
                    status = "assertionerror"
                    estimated_peak_memory_per_gpu, latency_per_iter_in_sec, predicted_status = None, None, None
                    RUNTIME_OVERHEAD_GB, ALLOCATOR_OVERHEAD_RATIO = None, None
                    this_case_accurately_predicted, this_case_accurately_classified = None, None
                    real_predicted_memory_ratio, real_adjusted_predicted_memory_ratio = None, None
                elif "RuntimeError: The Inner error is reported as above. The process exits for this inner error, and the current working operator name is HcclReduceScatter." in content:
                    runtimeerror += 1
                    #print("RuntimeError: The Inner error is reported as above. The process exits for this inner error, and the current working operator name is HcclReduceScatter.")
                    memory = None
                    gbs, mbs, seq_length, num_attention_heads, num_query_groups, _, _ = extract_train_metrics(content, oom=True)
                    time_per_iter_mean, tflops_mean = None, None
                    status = "runtimeerror"
                    estimated_peak_memory_per_gpu, latency_per_iter_in_sec, predicted_status = None, None, None
                    RUNTIME_OVERHEAD_GB, ALLOCATOR_OVERHEAD_RATIO = None, None
                    this_case_accurately_predicted, this_case_accurately_classified = None, None
                    real_predicted_memory_ratio, real_adjusted_predicted_memory_ratio = None, None
                elif ("ncclUnhandledCudaError: Call to CUDA function failed." in content and "Failed to CUDA calloc async" in content) or \
                      "NPU out of memory" in content or \
                      "CUDA out of memory" in content or \
                      "out of memory" in content or \
                      "Available memory is insufficient" in content or \
                      "Cuda failure 2 'out of memory'" in content or \
                      "RuntimeError: CUDA error: CUBLAS_STATUS_ALLOC_FAILED when calling `cublasCreate(handle)`" in content:
                    oom += 1
                    # print("Out of memory")
                    memory = extract_memory(content, card, oom=True)
                    gbs, mbs, seq_length, num_attention_heads, num_query_groups, _, _ = extract_train_metrics(content, oom=True)
                    time_per_iter_mean, tflops_mean = None, None
                    status = "oom"
                    estimated_peak_memory_per_gpu, latency_per_iter_in_sec, predicted_status = prediction_analyser(
                        model_name, card, gbs, mbs, seq_length, tp, pp, dp, sp, op)
                    RUNTIME_OVERHEAD_GB = RUNTIME_OVERHEAD_NPU_GB if card == "npu" else RUNTIME_OVERHEAD_GPU_GB
                    ALLOCATOR_OVERHEAD_RATIO = ALLOCATOR_OVERHEAD_RATIO_NPU if card == "npu" else ALLOCATOR_OVERHEAD_RATIO_GPU
                    if predicted_status.lower() == "oom":
                        accurate_prediction_counter += 1
                        accurate_classification_counter += 1
                        this_case_accurately_predicted, this_case_accurately_classified = True, True
                        real_predicted_memory_ratio, real_adjusted_predicted_memory_ratio = 1, 1
                    elif (estimated_peak_memory_per_gpu*ALLOCATOR_OVERHEAD_RATIO+RUNTIME_OVERHEAD_GB) * 8 * 1024 * (1-TOLERANCE_RATIO) <= memory and memory <= (estimated_peak_memory_per_gpu*ALLOCATOR_OVERHEAD_RATIO+RUNTIME_OVERHEAD_GB) * 8 * 1024 * (1+TOLERANCE_RATIO):
                        accurate_prediction_counter += 1
                        this_case_accurately_predicted = True
                        this_case_accurately_classified = False
                        real_predicted_memory_ratio = memory / (estimated_peak_memory_per_gpu*8*1024)
                        real_adjusted_predicted_memory_ratio = memory / ((estimated_peak_memory_per_gpu*ALLOCATOR_OVERHEAD_RATIO+RUNTIME_OVERHEAD_GB)*8*1024)
                    else:
                        this_case_accurately_predicted = False
                        this_case_accurately_classified = False
                        real_predicted_memory_ratio = memory / (estimated_peak_memory_per_gpu*8*1024)
                        real_adjusted_predicted_memory_ratio = memory / ((estimated_peak_memory_per_gpu*ALLOCATOR_OVERHEAD_RATIO+RUNTIME_OVERHEAD_GB)*8*1024)
                elif "Finish supervised fine-tuning task" in content:
                    success += 1
                    # print("Success")
                    memory = extract_memory(content, card, oom=False)
                    gbs, mbs, seq_length, num_attention_heads, num_query_groups, time_per_iter_mean, tflops_mean = extract_train_metrics(content, oom=False)
                    status = "success"
                    estimated_peak_memory_per_gpu, latency_per_iter_in_sec, predicted_status = prediction_analyser(
                        model_name, card, gbs, mbs, seq_length, tp, pp, dp, sp, op)
                    RUNTIME_OVERHEAD_GB = RUNTIME_OVERHEAD_NPU_GB if card == "npu" else RUNTIME_OVERHEAD_GPU_GB
                    ALLOCATOR_OVERHEAD_RATIO = ALLOCATOR_OVERHEAD_RATIO_NPU if card == "npu" else ALLOCATOR_OVERHEAD_RATIO_GPU
                    if predicted_status.lower() == "success":
                        accurate_classification_counter += 1
                        this_case_accurately_classified = True
                    else:
                        this_case_accurately_classified = False
                    if (estimated_peak_memory_per_gpu*ALLOCATOR_OVERHEAD_RATIO+RUNTIME_OVERHEAD_GB) * 8 * 1024 * (1-TOLERANCE_RATIO) <= memory and memory <= (estimated_peak_memory_per_gpu*ALLOCATOR_OVERHEAD_RATIO+RUNTIME_OVERHEAD_GB) * 8 * 1024 * (1+TOLERANCE_RATIO):
                        accurate_prediction_counter += 1
                        this_case_accurately_predicted = True
                    else:
                        this_case_accurately_predicted = False
                    real_predicted_memory_ratio = memory / (estimated_peak_memory_per_gpu*8*1024)
                    real_adjusted_predicted_memory_ratio = memory / ((estimated_peak_memory_per_gpu*ALLOCATOR_OVERHEAD_RATIO+RUNTIME_OVERHEAD_GB)*8*1024)
                else:
                    raise Exception("Special error case: {}, {}".format(file_full_path, filename))
            result_dict = {"folder_path": folder_path, "filename": filename,
                           "unique_key": "_".join([model_name, card, str(tp), str(pp), str(dp), sp, op, str(seq_length), str(gbs), str(mbs)]),
                           "card": card, "group": group,
                           "model_name": model_name, "tp": tp, "pp": pp, "dp": dp, "sp": sp, "op": op,
                           "gbs": gbs, "mbs": mbs, "seq_length": seq_length, "num_attention_heads": num_attention_heads, "num_query_groups": num_query_groups,
                           "status": status,
                           "tflops_mean": tflops_mean,
                           "time_per_iter_mean": time_per_iter_mean, "latency_per_iter_in_sec": latency_per_iter_in_sec,
                           "predicted_status": predicted_status,
                           "this_case_accurately_classified": this_case_accurately_classified,
                           "this_case_accurately_predicted": this_case_accurately_predicted,
                           "memory": memory,
                           "estimated_peak_memory_per_gpu": estimated_peak_memory_per_gpu,
                           "estimated_peak_memory_per_gpu_in_mb": None if estimated_peak_memory_per_gpu is None else estimated_peak_memory_per_gpu * 8 * 1024,
                           "real_predicted_memory_ratio": real_predicted_memory_ratio,
                           "real_adjusted_predicted_memory_ratio": real_adjusted_predicted_memory_ratio,
                           "RUNTIME_OVERHEAD_GB": RUNTIME_OVERHEAD_GB, "ALLOCATOR_OVERHEAD_RATIO": ALLOCATOR_OVERHEAD_RATIO}
            display_variables(result_dict)
            result_list.append(result_dict)
        except UnicodeDecodeError:
            # 若utf-8解码失败，尝试gbk编码（常见中文编码）
            # try:
            #    with open(file_full_path, 'r', encoding='gbk') as file:
            #        content = file.read()
            #        print("文件内容（GBK编码）：")
            #        print(content)
            # except Exception as e:
            #    print(f"读取文件 '{filename}' 失败：编码解析错误 - {e}")
            print("File read error, reason: encoding")

        # except Exception as e:
        #    print(f"失败-失败 '{filename}' 失败信息：{e}")
    print("Success: {}; valueerror: {}, assertionerror: {}, runtimeerror: {}, oom: {}, accurate_prediction_counter: {}, accurate_classification_counter: {}".format(success, valueerror,
                                                                                              assertionerror, runtimeerror, oom, accurate_prediction_counter, accurate_classification_counter))
    return success, valueerror, assertionerror, runtimeerror, oom, accurate_prediction_counter, accurate_classification_counter, result_list


def filepath_analyser(folder_path):
    if "npu一组" in folder_path:
        return "npu一组"
    elif "npu一A组" in folder_path:
        return "npu一A组"
    elif "npu一A0组" in folder_path:
        return "npu一A0组"
    elif "npu一AA组" in folder_path:
        return "npu一AA组"
    elif "npu一B组" in folder_path:
        return "npu一B组"
    elif "npu二组" in folder_path:
        return "npu二组"
    elif "npu三组" in folder_path:
        return "npu三组"
    elif "npu三A组" in folder_path:
        return "npu三A组"
    elif "npu四组" in folder_path:
        return "npu四组"
    elif "npu四A组" in folder_path:
        return "npu四A组"
    elif "npu五组" in folder_path:
        return "npu五组"
    elif "npu六组" in folder_path:
        return "npu六组"
    elif "gpu一组" in folder_path:
        return "gpu一组"
    elif "gpu一A组" in folder_path:
        return "gpu一A组"
    elif "gpu一A0组" in folder_path:
        return "gpu一A0组"
    elif "gpu一AA组" in folder_path:
        return "gpu一AA组"
    elif "gpu一B组" in folder_path:
        return "gpu一B组"
    elif "gpu二组" in folder_path:
        return "gpu二组"
    elif "gpu三组" in folder_path:
        return "gpu三组"
    elif "gpu三A组" in folder_path:
        return "gpu三A组"
    elif "gpu四组" in folder_path:
        return "gpu四组"
    elif "gpu四A组" in folder_path:
        return "gpu四A组"
    elif "gpu五组" in folder_path:
        return "gpu五组"
    elif "gpu六组" in folder_path:
        return "gpu六组"
    else:
        raise Exception("Group invalid. ")

def filename_analyser(filename):
    # print("filename: {}".format(filename))
    filename = filename[4:]
    if "deepseek_r1_distill_qwen_7b" in filename:
        model_type = "deepseek_r1_distill_qwen_7b"
        filename = filename.replace(model_type, "")
        filename = filename[1:]
    elif "deepseek_r1_distill_qwen_14b" in filename:
        model_type = "deepseek_r1_distill_qwen_14b"
        filename = filename.replace(model_type, "")
        filename = filename[1:]
    elif "llama2_7b" in filename:
        model_type = "llama2_7b"
        filename = filename.replace(model_type, "")
        filename = filename[1:]
    elif "qwen2_05b" in filename:
        model_type = "qwen2_05b"
        filename = filename.replace(model_type, "")
        filename = filename[1:]
    elif "qwen3_4b" in filename:
        model_type = "qwen3_4b"
        filename = filename.replace(model_type, "")
        filename = filename[1:]
    elif "qwen3_8b" in filename:
        model_type = "qwen3_8b"
        filename = filename.replace(model_type, "")
        filename = filename[1:]
    elif "qwen3_14b" in filename:
        model_type = "qwen3_14b"
        filename = filename.replace(model_type, "")
        filename = filename[1:]
    elif "qwen25_7b" in filename:
        model_type = "qwen25_7b"
        filename = filename.replace(model_type, "")
        filename = filename[1:]
    elif "qwen25_14b" in filename:
        model_type = "qwen25_14b"
        filename = filename.replace(model_type, "")
        filename = filename[1:]
    elif "baichuan2_7b" in filename:
        model_type = "baichuan2_7b"
        filename = filename.replace(model_type, "")
        filename = filename[1:]
    elif "baichuan2_13b" in filename:
        model_type = "baichuan2_13b"
        filename = filename.replace(model_type, "")
        filename = filename[1:]
    elif "chatglm3_6b" in filename:
        model_type = "chatglm3_6b"
        filename = filename.replace(model_type, "")
        filename = filename[1:]
    elif "glm4_9b" in filename:
        model_type = "glm4_9b"
        filename = filename.replace(model_type, "")
        filename = filename[1:]
    elif "internlm3_8b" in filename:
        model_type = "internlm3_8b"
        filename = filename.replace(model_type, "")
        filename = filename[1:]
    else:
        raise Exception("filename - model_type error")
    filename = filename.split("_")
    tp = int(filename[0])
    pp = int(filename[1])
    sp = filename[2]
    op = filename[3]
    card = filename[4]
    # print("model: {}, tp: {}, pp: {}, sp: {}, op: {}, card: {}".format(model_type, tp, pp, sp, op, card))
    return model_type, tp, pp, sp, op, card

def extract_memory(content, card, oom=False):
    if oom:
        if card == "npu":
            return 65536 * 8
        elif card == "gpu":
            return 81920 * 8
        else:
            raise Exception("OOM, but card invalid in extract_memory(). ")

    # 状态标记：是否已找到iter:10/20 lr、是否进入smi块、是否退出当前smi块
    found_iter_flag = False
    in_command_block = False
    result = []

    for line in content.split("\n"):
        line_stripped = line.strip()

        # 第一步：查找iter:10/20 lr标记
        if not found_iter_flag:
            if 'iter:10/20 lr' in line_stripped:
                found_iter_flag = True
            continue

        # 第二步：找到标记后，查找第一个npu-smi块开始
        if card == "npu":
            command = 'npu-smi'
            process = 'pt_main_thread'
        elif card == "gpu":
            command = 'NVIDIA-SMI'
            process = '...miniconda3/envs/tele/bin/python3.10'
        else:
            raise Exception("Invalid card parameter in extract_memory(). ")
        if found_iter_flag and not in_command_block:
            if command in line_stripped:
                in_command_block = True
            continue

        # 第三步：在npu-smi块内查找pt_main_thread行并打印
        if in_command_block:
            # 遇到下一个npu-smi时退出当前块
            if command in line_stripped:
                break
            # 打印包含pt_main_thread的行
            if process in line_stripped:
                line_stripped = line_stripped.split(process)
                if card == "npu":
                    result.append(int(line_stripped[-1].replace(" ", "").replace("|", "")))
                elif card == "gpu":
                    result.append(int(line_stripped[-1].replace(" ", "").replace("|", "").replace("MiB", "")))
    if card == "npu":
        assert len(result) == 8 or len(result) == 15
    elif card == "gpu":
        assert len(result) == 8
    # print(sum(result))
    return sum(result)

def examine_external_program(content, card):
    in_command_block = False
    for line in content.split("\n"):
        line_stripped = line.strip()
        if card == "npu":
            command = 'npu-smi'
            process = 'pt_main_thread'
            signature = "       0                 |"
        elif card == "gpu":
            command = 'NVIDIA-SMI'
            process = '...miniconda3/envs/tele/bin/python3.10'
            signature = "N/A  N/A"
        else:
            raise Exception("Invalid card parameter in examine_external_program(). ")

        if command in line_stripped:
            in_command_block = True
            continue

        if in_command_block and signature in line_stripped and process not in line_stripped:
            raise Exception("Invalid external program found: {}".format(line_stripped))

        if in_command_block:
            # 遇到下一个npu-smi时退出当前块
            if command in line_stripped:
                in_command_block = False
                continue
    return False

def extract_train_metrics(content, oom=False):
    time_pattern = r'time_per_iter\(ms\):([\d\.]+)'
    flops_pattern = r'TFLOP/s/p:([\d\.]+)'

    time_per_iter_list = []
    tflops_list = []
    gbs = None
    mbs = None
    seq_length = None
    num_attention_heads = None
    num_query_groups = None

    for line in content.split("\n"):
        # 同时包含两个目标字段才处理
        if 'time_per_iter(ms):' in line and 'TFLOP/s/p:' in line and 'iter:' in line:
            # 提取数值
            time_match = re.search(time_pattern, line)
            flops_match = re.search(flops_pattern, line)

            if time_match and flops_match:
                time_per_iter = time_match.group(1)
                tflops = flops_match.group(1)
                # print(time_per_iter, tflops)
                time_per_iter_list.append(float(time_per_iter) / 1000)
                tflops_list.append(float(tflops))
        elif "export GLOBAL_BATCH_SIZE=" in line:
            gbs = int(line.replace("export GLOBAL_BATCH_SIZE=", "").strip())
        elif "export MICRO_BATCH_SIZE=" in line:
            mbs = int(line.replace("export MICRO_BATCH_SIZE=", "").strip())
        elif "max_length: &seq_length_ref " in line:
            seq_length = int(line.replace("max_length: &seq_length_ref ", "").strip())
        elif "num_attention_heads: " in line:
            num_attention_heads = int(line.replace("num_attention_heads: ", "").strip())
        elif "num_query_groups: " in line:
            num_query_groups = int(line.replace("num_query_groups: ", "").strip())

    if not oom:
        NUM_OF_ITERS = 20
        assert len(time_per_iter_list) == NUM_OF_ITERS
        assert len(tflops_list) == NUM_OF_ITERS
        time_per_iter_mean = np.mean(time_per_iter_list)
        tflops_mean = np.mean(tflops_list)
    else:
        time_per_iter_mean = None
        tflops_mean = None
    if gbs is None:
        raise Exception("gbs is None")
    if mbs is None:
        raise Exception("mbs is None")
    if seq_length is None:
        raise Exception("seq_length is None")
    # print(gbs, mbs, seq_length, time_per_iter_mean, tflops_mean)
    # time_per_iter_mean has unit: second
    # tflops_mean has unit: tflops/s/card
    return gbs, mbs, seq_length, num_attention_heads, num_query_groups, time_per_iter_mean, tflops_mean

def prediction_analyser(model_name, card, gbs, mbs, seq_length, tp, pp, dp, sp, op,
                        num_attention_heads = None, num_query_groups = None):
    if card == "npu":
        card_name = "as910-pcie-64gb"
    elif card == "gpu":
        card_name = "h800-pcie-80gb"
    else:
        raise Exception("Invalid card parameter in prediction_analyser(). ")
    assert sp.lower() in ["true", "false"]
    assert op.lower() in ["true", "false"]
    use_sp = sp.lower() == "true"
    use_op = op.lower() == "true"

    predicted_result = test_once(model_name=model_name,
                                 gpu_name=card_name,
                                 global_batch_size=gbs,
                                 seq_len=seq_length,
                                 use_sp=use_sp,
                                 use_distributed_optimizer=use_op,
                                 tp_size=tp,
                                 dp_size=dp,
                                 pp_size=pp,
                                 num_attention_heads=num_attention_heads,
                                 num_query_groups=num_query_groups)

    if predicted_result == "valueerror":
        return None, None, "valueerror"
    elif predicted_result is None or len(predicted_result) == 0:
        if card == "npu":
            estimated_peak_memory_per_gpu = 64
        elif card == "gpu":
            estimated_peak_memory_per_gpu = 80
        latency_per_iter_in_sec = None
        predicted_status = "oom"
        return estimated_peak_memory_per_gpu, latency_per_iter_in_sec, predicted_status
    else:
        mbs_matched_result = None
        for elem in predicted_result:
            if str(elem["batch_size_per_gpu"]) == str(mbs):
                mbs_matched_result = elem
                break
        if mbs_matched_result is None:
            if card == "npu":
                estimated_peak_memory_per_gpu = 64
            elif card == "gpu":
                estimated_peak_memory_per_gpu = 80
            latency_per_iter_in_sec = None
            predicted_status = "oom"
            return estimated_peak_memory_per_gpu, latency_per_iter_in_sec, predicted_status
        else:
            estimated_peak_memory_per_gpu = mbs_matched_result["estimated_peak_memory_per_gpu"]
            latency_per_iter_in_sec = mbs_matched_result["latency_per_iter_in_sec"]
    if estimated_peak_memory_per_gpu is not None:
        estimated_peak_memory_per_gpu = float(estimated_peak_memory_per_gpu.replace("GB", "").replace(" ", ""))
        if card == "npu" and estimated_peak_memory_per_gpu >= 64:
            estimated_peak_memory_per_gpu = 64
            predicted_status = "oom"
        elif card == "gpu" and estimated_peak_memory_per_gpu >= 80:
            estimated_peak_memory_per_gpu = 80
            predicted_status = "oom"
        else:
            predicted_status = "success"
    else:
        raise Exception("estimated_peak_memory_per_gpu is None")
    if latency_per_iter_in_sec is not None:
        latency_per_iter_in_sec = float(latency_per_iter_in_sec)
    else:
        raise Exception("latency_per_iter_in_sec is None")
    return estimated_peak_memory_per_gpu, latency_per_iter_in_sec, predicted_status

def display_variables(result_dict):
    pass #print(", ".join(f"{key}: {value}" for key, value in result_dict.items()))

def large_sample_mean_test(data_list, model_card_dict, card_dict, popmean=1, alpha=0.05):
    """
    大样本（n>30）下验证列表均值是否等于指定值（Z检验）
    参数：
        data_list: 待检验的数值列表（大样本）
        popmean: 假设的总体均值（默认1）
        alpha: 显著性水平（默认0.05）
    返回：
        dict: 检验结果（包含Z统计量、p值、95%置信区间等）
    """
    # 1. 数据预处理
    data = np.array(data_list)
    if len(data) < 30:
        raise Warning("样本量小于30，建议使用t检验而非Z检验")
    #if np.isnan(data).any():
    #    data = data[~np.isnan(data)]  # 剔除缺失值
    #    print(f"剔除缺失值后，样本量为：{len(data)}")

    # 2. 核心统计量计算（Z检验）
    n = len(data)
    sample_mean = np.mean(data)
    sample_std = np.std(data, ddof=1)  # 样本标准差（无偏估计）
    se = sample_std / np.sqrt(n)  # 标准误
    z_stat = (sample_mean - popmean) / se  # Z统计量
    p_value = 2 * (1 - stats.norm.cdf(abs(z_stat)))  # 双侧检验p值

    # 3. 95%置信区间（辅助判断）
    ci_lower = sample_mean - stats.norm.ppf(1 - alpha / 2) * se
    ci_upper = sample_mean + stats.norm.ppf(1 - alpha / 2) * se

    for key in card_dict:
        card_dict[key] = np.array(card_dict[key])
    # USING from statsmodels.stats.weightstats import ztest TO PERFORM Z-TEST
    npu_z_stat, npu_p_value = ztest(card_dict["npu"], value=1)
    print("NPU Z-Test p-value using statsmodels ztest: {}, z_stat: {}".format(npu_p_value, npu_z_stat))
    gpu_z_stat, gpu_p_value = ztest(card_dict["gpu"], value=1)
    print("GPU Z-Test p-value using statsmodels ztest: {}, z_stat: {}".format(gpu_p_value, gpu_z_stat))
    all_z_stat, all_p_value = ztest(data, value = 1)
    print("Everything Z-Test p-value using statsmodels ztest: {}, z_stat: {}".format(all_p_value, all_z_stat))

    # USING from scipy.stats import ttest_ind TO PERFORM T-TEST
    npu_t_stat, npu_p_value = ttest_ind(card_dict["npu"], np.array([1] * len(data)))
    print("NPU T-Test p-value using statsmodels ttest_ind: {}, t_stat: {}".format(npu_p_value, npu_t_stat))
    gpu_t_stat, gpu_p_value = ttest_ind(card_dict["gpu"], np.array([1] * len(data)))
    print("GPU T-Test p-value using statsmodels ttest_ind: {}, t_stat: {}".format(gpu_p_value, gpu_t_stat))
    all_t_stat, all_p_value = ttest_ind(data, np.array([1]*len(data)))
    print("Everything T-Test p-value using statsmodels ttest_ind: {}, t_stat: {}".format(all_p_value, all_t_stat))

    # USING from scipy.stats import f_oneway TO PERFORM ONE-WAY ANOVA
    for key in model_card_dict:
        model_card_dict[key] = np.array(model_card_dict[key])
    npu_f_stat, npu_p_value = f_oneway(model_card_dict["baichuan2_7b_npu"], model_card_dict["baichuan2_13b_npu"],
                               model_card_dict["deepseek_r1_distill_qwen_7b_npu"], model_card_dict["deepseek_r1_distill_qwen_14b_npu"],
                               model_card_dict["glm4_9b_npu"], model_card_dict["chatglm3_6b_npu"],
                               model_card_dict["llama2_7b_npu"], model_card_dict["qwen2_05b_npu"],
                               model_card_dict["qwen25_7b_npu"], model_card_dict["qwen25_14b_npu"],
                               model_card_dict["qwen3_4b_npu"], model_card_dict["qwen3_8b_npu"], model_card_dict["qwen3_14b_npu"],
                               model_card_dict["internlm3_8b_npu"])
    print("NPU One-Way ANOVA p-value using statsmodels ttest_ind: {}, f_stat: {}".format(npu_p_value, npu_f_stat))
    gpu_f_stat, gpu_p_value = f_oneway(model_card_dict["deepseek_r1_distill_qwen_7b_gpu"], model_card_dict["deepseek_r1_distill_qwen_14b_gpu"],
                               model_card_dict["llama2_7b_gpu"], model_card_dict["qwen2_05b_gpu"],
                               model_card_dict["qwen25_7b_gpu"], model_card_dict["qwen25_14b_gpu"],
                               model_card_dict["qwen3_4b_gpu"], model_card_dict["qwen3_8b_gpu"], model_card_dict["qwen3_14b_gpu"])
    print("GPU One-Way ANOVA p-value using statsmodels ttest_ind: {}, f_stat: {}".format(gpu_p_value, gpu_f_stat))
    all_f_stat, all_p_value = f_oneway(model_card_dict["baichuan2_7b_npu"], model_card_dict["baichuan2_13b_npu"],
                               model_card_dict["deepseek_r1_distill_qwen_7b_npu"], model_card_dict["deepseek_r1_distill_qwen_14b_npu"],
                               model_card_dict["glm4_9b_npu"], model_card_dict["chatglm3_6b_npu"],
                               model_card_dict["llama2_7b_npu"], model_card_dict["qwen2_05b_npu"],
                               model_card_dict["qwen25_7b_npu"], model_card_dict["qwen25_14b_npu"],
                               model_card_dict["qwen3_4b_npu"], model_card_dict["qwen3_8b_npu"], model_card_dict["qwen3_14b_npu"],
                               model_card_dict["internlm3_8b_npu"],
                               model_card_dict["deepseek_r1_distill_qwen_7b_gpu"],
                               model_card_dict["deepseek_r1_distill_qwen_14b_gpu"],
                               model_card_dict["llama2_7b_gpu"], model_card_dict["qwen2_05b_gpu"],
                               model_card_dict["qwen25_7b_gpu"], model_card_dict["qwen25_14b_gpu"],
                               model_card_dict["qwen3_4b_gpu"], model_card_dict["qwen3_8b_gpu"], model_card_dict["qwen3_14b_gpu"])
    print("Everything One-Way ANOVA p-value using statsmodels ttest_ind: {}, f_stat: {}".format(all_p_value, all_f_stat))

    # 4. 结论判断
    if p_value < alpha:
        conclusion = f"在{alpha}显著性水平下，拒绝原假设（H₀: 均值={popmean}）→ 列表均值显著不等于{popmean}"
    else:
        conclusion = f"在{alpha}显著性水平下，无法拒绝原假设 → 无足够证据证明列表均值不等于{popmean}"

    # 整理结果
    result = {
        "样本量": n,
        "样本均值": round(sample_mean, 6),
        "样本标准差": round(sample_std, 6),
        "标准误": round(se, 6),
        "Z统计量": round(z_stat, 6),
        "p值": round(p_value, 8),  # 大样本p值可能极小，保留更多小数
        f"{int((1 - alpha) * 100)}%置信区间": (round(ci_lower, 6), round(ci_upper, 6)),
        "最终结论": conclusion
    }
    for key, value in result.items():
        print(f"{key}: {value}")

    # 5. 大样本简化版可视化（避免绘制5000+数据的直方图，改用核密度图）
    plt.figure(figsize=(10, 5))
    # 核密度图（展示分布趋势）
    plt.subplot(1, 2, 1)
    kde = stats.gaussian_kde(data)
    x_range = np.linspace(min(data), max(data), 1000)
    plt.plot(x_range, kde(x_range), color="blue", label="Data distribution density")
    plt.axvline(popmean, color="red", linestyle="--", linewidth=2, label=f"H0={popmean}")
    plt.axvline(sample_mean, color="green", linestyle="-", linewidth=2, label=f"Sample mean={sample_mean:.4f}")
    plt.fill_between(x_range, 0, kde(x_range), alpha=0.2, color="blue")
    plt.xlabel("Data")
    plt.ylabel("Density")
    plt.legend()
    plt.title("Data Distribution (Large Sample Size)")

    # 均值+95%置信区间可视化
    plt.subplot(1, 2, 2)
    plt.errorbar(x=[0], y=[sample_mean], yerr=[[sample_mean - ci_lower], [ci_upper - sample_mean]],
                 fmt="o", color="green", capsize=10, label="Sample Mean +/- 95% Confidence Interval")
    plt.axhline(popmean, color="red", linestyle="--", label=f"H0={popmean}")
    plt.xlim(-0.5, 0.5)
    plt.ylabel("Mean")
    plt.legend()
    plt.title("Sample Mean and 95% Confidence Interval")
    plt.tight_layout()
    plt.show()

    return result

def save_overall_result_to_csv(overall_result_list, RESULT_OUTPUT_PATH, filename='overall_result_list.csv'):
    df = pd.DataFrame(overall_result_list)
    df.to_csv(
        os.path.join(RESULT_OUTPUT_PATH, filename),
        index=False,
        encoding="utf-8-sig",
        na_rep="None"
    )

def pairwise_latency_analyser(overall_result_list):
    MODEL_LIST = ["baichuan2_7b", "baichuan2_13b",
                  "chatglm3_6b",
                  "deepseek_r1_distill_qwen_7b", "deepseek_r1_distill_qwen_14b",
                  "glm4_9b", "internlm3_8b",
                  "llama2_7b",
                  "qwen2_05b",
                  "qwen25_7b", "qwen25_14b",
                  "qwen3_4b", "qwen3_8b", "qwen3_14b"]
    overall_pair = 0
    overall_correct = 0
    for CARD in ["npu", "gpu"]:
        for MODEL in MODEL_LIST:
            pair_counter = 0
            correct_counter = 0
            overall_model_result_list = [d for d in overall_result_list if d["model_name"] == MODEL and d["card"] == CARD]
            for i in range(len(overall_model_result_list)):
                for j in range(i + 1, len(overall_model_result_list)):
                    pair_counter += 1
                    model_result1 = overall_model_result_list[i]
                    model_result2 = overall_model_result_list[j]
                    if model_result1["time_per_iter_mean"] is None:
                        model_result1["time_per_iter_mean"] = 2147483647
                    if model_result2["time_per_iter_mean"] is None:
                        model_result2["time_per_iter_mean"] = 2147483647
                    if model_result1["latency_per_iter_in_sec"] is None:
                        model_result1["latency_per_iter_in_sec"] = 2147483647
                    if model_result2["latency_per_iter_in_sec"] is None:
                        model_result2["latency_per_iter_in_sec"] = 2147483647
                    if model_result1["time_per_iter_mean"] <= model_result2["time_per_iter_mean"] and \
                       model_result1["latency_per_iter_in_sec"] <= model_result2["latency_per_iter_in_sec"]:
                        correct_counter += 1
                    elif model_result1["time_per_iter_mean"] > model_result2["time_per_iter_mean"] and \
                         model_result1["latency_per_iter_in_sec"] > model_result2["latency_per_iter_in_sec"]:
                        correct_counter += 1
            if pair_counter != 0:
                print("Model: {}, Card: {}, Pair: {}, Correct: {}, Correct Ratio: {}%".format(MODEL, CARD, pair_counter, correct_counter, correct_counter / pair_counter * 100))
            overall_pair += pair_counter
            overall_correct += correct_counter
    print("Overall pair: {}, Overall correct: {}, Overall Correct Ratio: {}%".format(overall_pair, overall_correct, overall_correct / overall_pair * 100))



# =========================================================================================================
folder = ['/Users/jiashu/University of CAS/Project Tromso/实验数据/npu一组/paper_logs',
          '/Users/jiashu/University of CAS/Project Tromso/实验数据/npu一A组/paper_logs_yizua_npu_20251213',
          #'/Users/jiashu/University of CAS/Project Tromso/实验数据/npu一A0组/paper_logs_yia0zu_npu_20251218',
          '/Users/jiashu/University of CAS/Project Tromso/实验数据/npu一AA组/paper_logs_yiaazu_npu_20251217',
          '/Users/jiashu/University of CAS/Project Tromso/实验数据/npu一B组/paper_logs_yizuban_npu_20251212',
          '/Users/jiashu/University of CAS/Project Tromso/实验数据/npu二组/paper_logs_good_npu_20251207',
          '/Users/jiashu/University of CAS/Project Tromso/实验数据/npu三组/paper_logs_20251208_good_npu',
          '/Users/jiashu/University of CAS/Project Tromso/实验数据/npu三A组/paper_logs_sanazu_npu_20251216',
          '/Users/jiashu/University of CAS/Project Tromso/实验数据/npu四组/paper_logs_sizu_20251211_npu',
          '/Users/jiashu/University of CAS/Project Tromso/实验数据/npu四A组/paper_logs_siazu_npu_20251216',
          '/Users/jiashu/University of CAS/Project Tromso/实验数据/npu五组/paper_logs_wuzu_20251211_npu',
          '/Users/jiashu/University of CAS/Project Tromso/实验数据/npu六组/paper_logs_liuzu_npu_20251214',
          '/Users/jiashu/University of CAS/Project Tromso/实验数据/gpu一组/paper_logs',
          '/Users/jiashu/University of CAS/Project Tromso/实验数据/gpu一A组/paper_logs_yizua_gpu_20251212',
          #'/Users/jiashu/University of CAS/Project Tromso/实验数据/gpu一A0组/paper_logs_yia0zu_gpu_20251217',
          '/Users/jiashu/University of CAS/Project Tromso/实验数据/gpu一AA组/paper_logs_yiaazu_gpu_20251216',
          '/Users/jiashu/University of CAS/Project Tromso/实验数据/gpu一B组/paper_logs_yizuban_20251212',
          '/Users/jiashu/University of CAS/Project Tromso/实验数据/gpu二组/paper_logs',
          '/Users/jiashu/University of CAS/Project Tromso/实验数据/gpu三组/paper_logs_20251208_good_gpu',
          '/Users/jiashu/University of CAS/Project Tromso/实验数据/gpu三A组/paper_logs_sanazu_gpu_20251215',
          '/Users/jiashu/University of CAS/Project Tromso/实验数据/gpu四组/paper_logs_sizu_20251210',
          '/Users/jiashu/University of CAS/Project Tromso/实验数据/gpu四A组/paper_logs_siazu_gpu_20251215',
          '/Users/jiashu/University of CAS/Project Tromso/实验数据/gpu五组/paper_logs_wuzu_gpu_20251211',
          '/Users/jiashu/University of CAS/Project Tromso/实验数据/gpu六组/paper_logs_liuzu_gpu_20251214']
overall_success = 0
overall_valueerror = 0
overall_oom = 0
overall_predict_accurate = 0
overall_classify_accurate = 0
overall_result_list = []
for target_folder in folder:
    print("=" * 50)
    print("Analysing {}...".format(target_folder))
    success, valueerror, assertionerror, runtimeerror, oom, accurate_prediction_counter, accurate_classification_counter, result_list = read_all_txt_files(target_folder)
    print("This group's prediction accuracy: {}%".format(accurate_prediction_counter * 100 / (success + valueerror + oom)))
    print("This group's classification accuracy: {}%".format(accurate_classification_counter * 100 / (success + valueerror + oom)))
    print("=" * 50)
    overall_success += success
    overall_valueerror += valueerror
    overall_oom += oom
    overall_predict_accurate += accurate_prediction_counter
    overall_classify_accurate += accurate_classification_counter
    overall_result_list += result_list

print("="*50)
print("Overall Result: ")
print("Overall success: {}, Overall valueerror: {}, Overall oom: {}, Overall predict accurate: {}, Overall classify accurate: {}".format(overall_success, overall_valueerror, overall_oom,
      overall_predict_accurate, overall_classify_accurate))
print("Overall predict accurate ratio: {}".format(overall_predict_accurate * 100 / (overall_success + overall_valueerror + overall_oom)))
print("Overall classify accurate ratio: {}".format(overall_classify_accurate * 100 / (overall_success + overall_valueerror + overall_oom)))
print("="*50)
RESULT_OUTPUT_PATH = '/Users/jiashu/University of CAS/Project Tromso/实验结果表'

save_overall_result_to_csv(overall_result_list, RESULT_OUTPUT_PATH, filename='overall_result_list.csv')

real_adjusted_predicted_memory_ratio_list = []
model_card_dict = defaultdict(list)
card_dict = defaultdict(list)
for elem in overall_result_list:
    if elem["real_adjusted_predicted_memory_ratio"] is not None:
        if elem["real_adjusted_predicted_memory_ratio"] >=0.9 and elem["real_adjusted_predicted_memory_ratio"] <=1.1:
            real_adjusted_predicted_memory_ratio_list.append(1)
            model_card_dict["{}_{}".format(elem["model_name"], elem["card"])].append(1)
            card_dict[elem["card"]].append(1)
        else:
            real_adjusted_predicted_memory_ratio_list.append(elem["real_adjusted_predicted_memory_ratio"])
            model_card_dict["{}_{}".format(elem["model_name"], elem["card"])].append(elem["real_adjusted_predicted_memory_ratio"])
            card_dict[elem["card"]].append(elem["real_adjusted_predicted_memory_ratio"])

statistical_result = large_sample_mean_test(real_adjusted_predicted_memory_ratio_list,
                                            model_card_dict, card_dict, popmean=1)


pairwise_latency_analyser(overall_result_list)
