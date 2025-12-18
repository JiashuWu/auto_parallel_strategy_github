#!/usr/bin/env python3
import argparse
import os

def update_env_sh(template_file, output_file, replacements):
    """
    替换模板文件中的变量并保存到输出文件
    
    Args:
        template_file (str): 模板文件路径
        output_file (str): 输出文件路径
        replacements (dict): 替换字典，key为要替换的字符串，value为替换后的值
    """
    # 检查模板文件是否存在
    if not os.path.exists(template_file):
        raise FileNotFoundError(f"模板文件不存在: {template_file}")
    
    # 读取模板文件内容
    with open(template_file, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # 执行替换操作
    for old_str, new_str in replacements.items():
        content = content.replace(old_str, new_str)
    
    # 写入输出文件
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write(content)
    
    print(f"成功生成文件: {output_file}")
    print("替换完成的变量列表:")
    for var, value in replacements.items():
        print(f"  {var} -> {value}")

def main():
    # 创建参数解析器
    parser = argparse.ArgumentParser(
        description='替换shell模板文件中的变量并生成新的shell文件',
        formatter_class=argparse.RawDescriptionHelpFormatter
    )
    
    # 添加命令行参数
    parser.add_argument('--template_sh_file', 
                        required=True,
                        help='模板shell文件路径')
    parser.add_argument('--output_sh_file', 
                        required=True,
                        help='输出shell文件路径')
    parser.add_argument('--SUBSTITUTION_MODEL_DIR', 
                        required=True,
                        dest='model_dir',
                        help='替换SUBSTITUTION_MODEL_DIR的目录路径')
    parser.add_argument('--SUBSTITUTION_MODEL_TYPE', 
                        required=True,
                        dest='model_type',
                        help='替换SUBSTITUTION_MODEL_TYPE的模型类型值')
    
    # 解析参数
    args = parser.parse_args()
    
    # 构建替换字典
    replacements = {
        'SUBSTITUTION_MODEL_DIR': args.model_dir,
        'SUBSTITUTION_MODEL_TYPE': args.model_type
    }
    
    try:
        # 执行替换操作
        update_env_sh(
            template_file=args.template_sh_file,
            output_file=args.output_sh_file,
            replacements=replacements
        )
    except Exception as e:
        print(f"执行出错: {e}")
        exit(1)

if __name__ == '__main__':
    main()