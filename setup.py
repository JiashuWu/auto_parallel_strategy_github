# Copyright 2025 State Cloud.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

from setuptools import setup, find_packages, Extension
from typing import List
from Cython.Build import cythonize
import Cython.Compiler.Options
import os

# 禁用Cython的调试信息以提高安全性
Cython.Compiler.Options.docstrings = False

# 获取所有需要编译的Python文件（排除指定目录）
def get_python_files():
    python_files = []
    for root, _, files in os.walk("analysis"):
        for file in files:
            if file.endswith(".pyx") and not file.startswith("__init__"):
                python_files.append(os.path.join(root, file))
    return python_files

# 创建Extension对象，保持与原文件相同的目录结构
extensions = []
for module in get_python_files():
    module_path = os.path.splitext(module)[0]
    # 将路径分隔符转换为点号，作为模块名
    module_name = module_path.replace(os.path.sep, '.')
    
    extensions.append(
        Extension(
            module_name,  # 使用完整模块名（如"teleformers.version"）
            [module],
            extra_compile_args=['-std=c99'],
        )
    )

# 编译选项
compiler_directives = {
    'binding': False,  # 禁用Python/C绑定
}

# 执行cythonize
extensions = cythonize(
    extensions,
    compiler_directives=compiler_directives,
    quiet=False,  # 显示详细编译信息
    force=True,  # 强制重新编译所有文件
)

version_file = "analysis/version.py"


def get_version():
    with open(version_file, "r", encoding="utf-8") as f:
        exec(compile(f.read(), version_file, "exec"))
    return locals()["__version__"]


def get_requires() -> List[str]:
    with open("requirements.txt", "r", encoding="utf-8") as f:
        file_content = f.read()
        lines = [
            line.strip()
            for line in file_content.strip().split("\n")
            if not line.startswith("#")
        ]
        return lines

def main():
    setup(
        name="autoparallel",
        version=get_version(),
        author="huiju-ai",
        description="Easy-to-use LLM auto-parallelization toolkit",
        keywords=["teleformers", "auto-parallel", "LLM", "NPU", "GPU"],
        license="Apache 2.0 License",
        packages=find_packages(),
        package_data={
            "analysis": ["model_configs/*.json", "gpu_configs/*.json", "dtype_configs/*.json"],
        },
        include_package_data=True,
        install_requires=get_requires(),
        entry_points={"console_scripts": ["auto=analysis.auto_parallel_strategy:find_aps", "once=analysis.once_test:test_once"]},
        python_requires=">=3.8.0",
        classifiers=[
            "Development Status :: 4 - Beta",
            "License :: OSI Approved :: Apache Software License",
            "Operating System :: OS Independent",
            "Programming Language :: Python :: 3",
            "Programming Language :: Python :: 3.8",
            "Programming Language :: Python :: 3.9",
            "Programming Language :: Python :: 3.10",
            "Programming Language :: Python :: 3.11",
            "Programming Language :: Python :: 3.12",
        ],
        ext_modules=extensions,
    )


if __name__ == "__main__":
    main()
