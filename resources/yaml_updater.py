import argparse
import os
import sys

def update_yaml(template_file_path, output_file_path, replacements):
    """
    从模板文件读取内容，替换指定占位符后保存到指定输出文件
    
    Args:
        template_file_path (str): 模板YAML文件路径
        output_file_path (str): 替换后输出的文件路径
        replacements (dict): 替换映射字典，key为要替换的占位符，value为替换值
    """
    # 检查模板文件是否存在
    if not os.path.exists(template_file_path):
        print(f"错误：模板文件 {template_file_path} 不存在", file=sys.stderr)
        sys.exit(1)
    
    # 读取模板文件内容
    try:
        with open(template_file_path, 'r', encoding='utf-8') as f:
            content = f.read()
    except Exception as e:
        print(f"错误：读取模板文件失败 - {e}", file=sys.stderr)
        sys.exit(1)
    
    # 执行占位符替换
    for placeholder, value in replacements.items():
        content = content.replace(placeholder, value)
        print("Replacing {} with {}".format(placeholder, value))
    
    # 确保输出目录存在
    output_dir = os.path.dirname(output_file_path)
    if output_dir and not os.path.exists(output_dir):
        try:
            os.makedirs(output_dir, exist_ok=True)
            print(f"提示：自动创建输出目录 {output_dir}")
        except Exception as e:
            print(f"错误：创建输出目录失败 - {e}", file=sys.stderr)
            sys.exit(1)
    
    # 写入输出文件
    try:
        with open(output_file_path, 'w', encoding='utf-8') as f:
            f.write(content)
        print(f"✅ 成功：替换后的文件已保存到 {output_file_path}")
    except Exception as e:
        print(f"错误：写入输出文件失败 - {e}", file=sys.stderr)
        sys.exit(1)

def main():
    # 创建参数解析器
    parser = argparse.ArgumentParser(description='从模板YAML文件替换占位符，生成新的YAML文件')
    
    # 更新参数名：yaml_file → template_yaml_file
    parser.add_argument('--template_yaml_file', required=True, help='模板YAML文件路径（包含占位符的源文件）')
    parser.add_argument('--output_yaml_file', required=True, help='替换后输出的YAML文件路径')
    parser.add_argument('--SUBSTITUTION_TP', required=True, help='替换SUBSTITUTION_TP的目标值')
    parser.add_argument('--SUBSTITUTION_PP', required=True, help='替换SUBSTITUTION_PP的目标值')
    parser.add_argument('--SUBSTITUTION_SP', required=True, help='替换SUBSTITUTION_SP的目标值')
    parser.add_argument('--SUBSTITUTION_OP', required=True, help='替换SUBSTITUTION_OP的目标值')
    
    # 解析参数
    args = parser.parse_args()
    
    # 构建替换字典
    replacements = {
        'SUBSTITUTION_TP': args.SUBSTITUTION_TP,
        'SUBSTITUTION_PP': args.SUBSTITUTION_PP,
        'SUBSTITUTION_SP': args.SUBSTITUTION_SP,
        'SUBSTITUTION_OP': args.SUBSTITUTION_OP
    }
    
    # 执行替换操作
    update_yaml(args.template_yaml_file, args.output_yaml_file, replacements)

if __name__ == '__main__':
    main()