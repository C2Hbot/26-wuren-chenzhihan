set(OpenCV_DIR "/usr/lib/x86_64-linux-gnu/cmake/opencv4") #完蛋了我的OpenCV库的地址有点独特啊啊啊
find_package(OpenCV REQUIRED) #真的处处要写

set(Common_INCLUDE_DIRS ${CMAKE_CURRENT_LIST_DIR}/include CACHE PATH "Common_INCLUDE_DIRS")#缓存变量什么的看不懂(逃)
file(GLOB subdirs RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_CURRENT_SOURCE_DIR}/*)

add_library(math STATIC math/src/Math.cpp math/include/Math.h) #math库(包含opencv)
target_include_directories(math PUBLIC math/include ${OpenCV_INCLUDE_DIRS})
add_library(common INTERFACE) #接口库，一旦使用PUBLIC或PRIVATE就报错，或许是

target_link_libraries(common INTERFACE math)  # 把 math 库链接到 common
target_include_directories(common INTERFACE ${Common_INCLUDE_DIRS} )

execute_process(COMMAND ls ${CMAKE_CURRENT_SOURCE_DIR} OUTPUT_VARIABLE TEST_MODULE_COMMON_ST)
string(REPLACE "\n" ";" TEST_MODULE_COMMON_ST "${TEST_MODULE_COMMON_ST}")
foreach(m ${TEST_MODULE_COMMON_ST})
    if(IS_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/${m})
        if(EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/${m}/CMakeLists.txt)
            add_subdirectory(${m}) #一旦发现有子目录下有Cmakelists文件，就将子目录添加到生成。
        endif()
    endif()
endforeach()