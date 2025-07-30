cmake_minimum_required(VERSION 3.10)#指定最低版本
project(
    test
    LANGUAGES CXX
) #项目名，编译语言

set(OpenCV_DIR "/usr/lib/x86_64-linux-gnu/cmake/opencv4")# 指向 OpenCV 配置文件所在目录,极大概率移植的时候需要修改

find_package(OpenCV REQUIRED)# 然后查找 OpenCV


add_subdirectory(modules)        
add_subdirectory(common)       
# 包含子目录


add_executable(
    test
    main.cpp
)# 构建可执行程序

target_link_libraries(
    test
    PRIVATE
    modules          # modules库，下属kalman，math
    ${OpenCV_LIBS}   # OpenCV 库
    common           # common库，下属A1,A2,M1,M2
)