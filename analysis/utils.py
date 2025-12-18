

# 将内存转换为可读的字符串，有精度范围
def _num_to_string(num, precision=2, divisor=1024):
    if num is None:
        return None
    if num < 0:
        sign = '-'
        num = -num
    else:
        sign = ''
    if num is None:
        return "None"
    if num // divisor**4 > 0:
        return sign + str(round(num / divisor**4, precision)) + " T"
    elif num // divisor**3 > 0:
        return sign + str(round(num / divisor**3, precision)) + " G"
    elif num // divisor**2 > 0:
        return sign + str(round(num / divisor**2, precision)) + " M"
    elif num // divisor > 0:
        return sign + str(round(num / divisor, precision)) + " K"
    else:
        return sign + str(num)

# 将延时转换为可读的字符串，有精度范围
def _latency_to_string(latency_in_s, precision=2):
    if latency_in_s is None:
        return "None"
    day = 24 * 60 * 60
    hour = 60 * 60
    minute = 60
    ms = 1 / 1000
    us = 1 / 1000000
    if latency_in_s // day > 0:
        return str(round(latency_in_s / day, precision)) + " days"
    elif latency_in_s // hour > 0:
        return str(round(latency_in_s / hour, precision)) + " hours"
    elif latency_in_s // minute > 0:
        return str(round(latency_in_s / minute, precision)) + " minutes"
    elif latency_in_s > 1:
        return str(round(latency_in_s, precision)) + " s"
    elif latency_in_s > ms:
        return str(round(latency_in_s / ms, precision)) + " ms"
    else:
        return str(round(latency_in_s / us, precision)) + " us"

# 是否在可允许的误差范围内
def within_range(val, target, tolerance):
    return abs(val - target) / target < tolerance

# 将层数分割为stage个部分，使得每个部分尽可能相等   for uniform
def split_stage(layers: int, stage: int):
    floor_div = layers // stage
    ceil_div = -(-layers // stage)
    remainder = layers % stage
    split_result = [floor_div]*(stage-remainder) + [ceil_div]*remainder
    return split_result

# for pipeline 计算内存瓶颈
def activation_nums(pp_size: int):
    '''
    pipeline不同stage保存的激活数
    '''
    assert pp_size >= 1, "pp_size must >= 1"
    activation_nums_list = [0] * pp_size
    for i in range(pp_size):
        activation_nums_list[pp_size-1-i] = i + 1 + min((pp_size-i-1), 2*i)
    return activation_nums_list

def weight_op_grad_memory_per_gpu(split_result: list, head_weight_op_grad_memory: float, tail_weight_op_grad_memory: float, per_layer_weight_op_grad_memory: float):
    length = len(split_result)
    weight_op_grad_memory_list = [0] * length
    for i in range(length):
        weight_op_grad_memory_list[i] += per_layer_weight_op_grad_memory * split_result[i]
    weight_op_grad_memory_list[0] += head_weight_op_grad_memory
    weight_op_grad_memory_list[-1] += tail_weight_op_grad_memory
    return weight_op_grad_memory_list
    
def activation_layers_per_gpu(pp_size: int, layers: int, split_result: list=None):
    if split_result == None:
        split_result = split_stage(layers, pp_size)
    activation_nums_list = activation_nums(pp_size)
    assert len(split_result) == len(activation_nums_list), "split_result and activation_nums_list must have same length"
    activation_layers_list = [0] * pp_size
    for i in range(pp_size):
        activation_layers_list[i] = split_result[i] * activation_nums_list[i]
    return activation_layers_list, split_result

def memory_per_gpu(pp_size: int, layers: int, per_layer_activation_memory: float, head_weight_op_grad_memory: float, tail_weight_op_grad_memory: float, per_layer_weight_op_grad_memory: float, head_activation_memory: float, tail_activation_memory: float, split_result: list = None, weight_op_grad_memory_list: list = None):
    if split_result == None:
        split_result = split_stage(layers, pp_size)
    assert len(split_result) == pp_size, "split_result length should be equal to pp_size"
    if weight_op_grad_memory_list == None:
        weight_op_grad_memory_list = weight_op_grad_memory_per_gpu(split_result, head_weight_op_grad_memory, tail_weight_op_grad_memory, per_layer_weight_op_grad_memory)
    layers_list, split_result = activation_layers_per_gpu(pp_size, layers, split_result)
    memory_list = [0] * pp_size
    for i in range(pp_size):
        memory_list[i] += layers_list[i] * per_layer_activation_memory + weight_op_grad_memory_list[i]
    memory_list[0] += layers_list[0] * head_activation_memory
    memory_list[-1] += layers_list[-1] * tail_activation_memory
    return memory_list, split_result
    
### 只考虑内存瓶颈，不考虑latency瓶颈了，假设平均切分latency瓶颈最小
def balance_memory(pp_size: int, layers: int, per_layer_activation_memory: float, head_weight_op_grad_memory: float, tail_weight_op_grad_memory: float, per_layer_weight_op_grad_memory: float, head_activation_memory: float, tail_activation_memory: float, split_result: list=None):
    memory_list, split_result = memory_per_gpu(pp_size, layers, per_layer_activation_memory, head_weight_op_grad_memory, tail_weight_op_grad_memory, per_layer_weight_op_grad_memory, head_activation_memory, tail_activation_memory, split_result)
    split_result_lists = []
    memory_lists = []
    while True:
        max_memory = max(memory_list)
        min_memory = min(memory_list)
        
        max_index = memory_list.index(max_memory)
        min_index = memory_list.index(min_memory)
        
        if split_result[max_index] > 0:  
            split_result[max_index] -= 1
            split_result[min_index] += 1
            
            memory_list, _ = memory_per_gpu(pp_size, layers, per_layer_activation_memory, head_weight_op_grad_memory, tail_weight_op_grad_memory, per_layer_weight_op_grad_memory, head_activation_memory, tail_activation_memory, split_result)
            new_max_memory = max(memory_list)
            new_min_memory = min(memory_list)
            # print(new_max_memory, max_memory)
            if (new_max_memory > max_memory) or (memory_list[min_index] == max_memory and memory_list[max_index] == min_memory):
                return split_result_lists, memory_lists
            else:
                split_result_lists.append(split_result.copy())
                memory_lists.append(memory_list.copy())
        else:
            return split_result_lists, memory_lists
            


if __name__ =="__main__":
    memory_list, split_result = memory_per_gpu(pp_size=8, layers=32, per_layer_activation_memory=2, head_weight_op_grad_memory=0.4, tail_weight_op_grad_memory=0.6, per_layer_weight_op_grad_memory=1, head_activation_memory=1.5, tail_activation_memory=1.7)
    print(memory_list)
    print(split_result)
    split_result_lists, memory_lists = balance_memory(pp_size=8, layers=32, per_layer_activation_memory=2, head_weight_op_grad_memory=0.4, tail_weight_op_grad_memory=0.6, per_layer_weight_op_grad_memory=1, head_activation_memory=1.5, tail_activation_memory=1.7)
    print(split_result_lists)
    print(memory_lists)
    
