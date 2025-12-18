def generate_valid_combinations():
    """
    生成所有合法的参数组合，返回字典列表
    合法组合规则：
    - SUBSTITUTION_TP 和 SUBSTITUTION_PP 组合：(1,1),(1,2),(1,4),(1,8),(2,1),(2,2),(2,4),(4,1),(4,2),(8,1)
    - SUBSTITUTION_SP：仅允许 true/false（小写）
    - SUBSTITUTION_OP：仅允许 true/false（小写）
    """
    # 定义合法的TP和PP组合
    valid_tp_pp_pairs = [
        (1, 1), (1, 2), (1, 4), (1, 8),
        (2, 1), (2, 2), (2, 4),
        (4, 1), (4, 2),
        (8, 1)
    ]
    
    # 定义合法的SP和OP值
    valid_boolean_values = ['true', 'false']
    
    # 生成所有组合
    combinations = []
    for tp, pp in valid_tp_pp_pairs:
        for sp in valid_boolean_values:
            for op in valid_boolean_values:
                combination = {
                    'SUBSTITUTION_TP': tp,
                    'SUBSTITUTION_PP': pp,
                    'SUBSTITUTION_SP': sp,
                    'SUBSTITUTION_OP': op
                }
                combinations.append(combination)
    
    return combinations

'''
# 主程序执行
if __name__ == "__main__":
    # 生成所有合法组合
    valid_combinations = generate_valid_combinations()
    
    # 打印结果信息
    print(f"生成的合法组合总数：{len(valid_combinations)}")
    
    # print("\n所有合法组合：")
    # for combo in valid_combinations:
    #     print(combo)
'''