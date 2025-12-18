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

import os
import sys

code_path = './analysis'
exclude_file_name = ['__init__.py', 'version.py']
exclude_dirs = []  # 精确排除路径

def should_exclude(path):
    """检查路径是否应被排除"""
    rel_path = os.path.relpath(path, code_path)
    return any(
        rel_path == ex_dir or rel_path.startswith(f"{ex_dir}/")
        for ex_dir in exclude_dirs
    )

if sys.argv[1] == 'pyx':
    for root, dirs, files in os.walk(code_path, topdown=True):
        # 跳过排除目录
        dirs[:] = [d for d in dirs if not should_exclude(os.path.join(root, d))]
        
        if should_exclude(root):
            continue
            
        for name in files:
            if name.endswith('.py') and name not in exclude_file_name:
                print(f'transform {name}')
                py_file_path = os.path.join(root, name)
                pyx_file_path = os.path.join(root, name + 'x')
                os.rename(py_file_path, pyx_file_path)
else:
    for root, dirs, files in os.walk(code_path, topdown=True):
        # 跳过排除目录
        dirs[:] = [d for d in dirs if not should_exclude(os.path.join(root, d))]
        
        if should_exclude(root):
            continue
            
        for name in files:
            if name.endswith('.pyx'):
                print(f'transform {name}')
                py_file_path = os.path.join(root, name)
                pyx_file_path = os.path.join(root, name.replace('.pyx', '.py'))
                os.rename(py_file_path, pyx_file_path)
                c_file_path = os.path.join(root, name.replace('.pyx', '.c'))
                if os.path.isfile(c_file_path):
                    os.remove(c_file_path)