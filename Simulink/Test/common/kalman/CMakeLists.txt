find_package(OpenCV REQUIRED)
include_directories( ${OpenCV_INCLUDE_DIRS} )
add_library(kalman INTERFACE) #自定义，把kalman创建为接口库
set(kalman_INCLUDE_DIR)
list(APPEND kalman_INCLUDE_DIR "${CMAKE_CURRENT_LIST_DIR}/include")
list(APPEND kalman_INCLUDE_DIR "${OpenCV_INCLUDE_DIRS}")
target_link_libraries(kalman INTERFACE ${OpenCV_LIBS})   #自定义，把kalman关联上Opencv库
set(kalman_INCLUDE_DIRS ${kalman_INCLUDE_DIR}
                        CACHE PATH "kalman filter include directories")