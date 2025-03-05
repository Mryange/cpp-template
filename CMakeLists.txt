cmake_minimum_required(VERSION 3.12)

# 设置项目名称和版本
project(CppTemplate VERSION 1.0)

# 设置C++标准
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O0")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fsanitize=address -fno-omit-frame-pointer")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -fsanitize=address")

# 设置编译数据库输出路径
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# 查找当前目录下的所有源文件并将列表存储在SRC_FILES变量中
file(GLOB_RECURSE SRC_FILES "src/*.cpp")

# 添加可执行文件
add_executable(CppTemplate ${SRC_FILES})
