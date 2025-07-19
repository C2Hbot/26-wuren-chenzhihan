cmake_minimum_required(VERSION 3.10)
project(Test LANGUAGES CXX) #定义项目名
find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})# 添加到搜索路径
add_subdirectory(modules) #添加modules模块到项目
add_subdirectory(common) #添加common模块到项目
add_executable(Test main.cpp) #使用main.cpp生成可执行文件Test
target_link_libraries(Test PUBLIC common modules ${OpenCV_LIBS})