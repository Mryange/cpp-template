#!/bin/bash

# 删除build目录
rm -rf build

# 创建build目录并进入
mkdir build
cd build

# 运行cmake生成构建文件
cmake ..

# 编译项目
make

# 运行生成的可执行文件
./CppTemplate
