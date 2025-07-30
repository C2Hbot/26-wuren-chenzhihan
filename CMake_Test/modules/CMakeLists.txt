set(Modules_INCLUDE_DIRS ${CMAKE_CURRENT_LIST_DIR}/include CACHE PATH "Modules_INCLUDE_DIRS")
file(GLOB subdirs RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_CURRENT_SOURCE_DIR}/*)
add_library(modules INTERFACE) #建库

foreach(m ${subdirs})
    if(IS_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/${m}) #遍历目录而不是文件
        if(EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/${m}/CMakeLists.txt)
            add_subdirectory(${m}) #一旦发现有子目录下有Cmakelists文件，就将子目录添加到生成。
        endif()
    endif()
endforeach()
target_link_libraries(modules INTERFACE M1 A1 A2 M2)  # 把所有子模块都加进来
