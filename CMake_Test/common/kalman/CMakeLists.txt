set(OpenCV_DIR "/usr/lib/x86_64-linux-gnu/cmake/opencv4")
find_package(OpenCV REQUIRED) 
include_directories( ${OpenCV_INCLUDE_DIRS} )
add_library(kalman INTERFACE)  #建库

set(kalman_INCLUDE_DIR)
list(APPEND kalman_INCLUDE_DIR "${CMAKE_CURRENT_LIST_DIR}/include")
list(APPEND kalman_INCLUDE_DIR "${OpenCV_INCLUDE_DIRS}") 
#收集${CMAKE_CURRENT_LIST_DIR}/include，${OpenCV_INCLUDE_DIRS}的头文件到kalman_INCLUDE_DIR变量中

target_include_directories(kalman INTERFACE kalman_INCLUDE_DIR)#只有.hpp文件，使用接口库形式
set(kalman_INCLUDE_DIRS ${kalman_INCLUDE_DIR}
                        CACHE PATH "kalman filter include directories")

target_link_libraries(kalman INTERFACE ${OpenCV_LIBS})  # 链接 OpenCV 库