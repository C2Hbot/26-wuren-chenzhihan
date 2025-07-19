aux_source_directory(src Path_M1)
aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/../A1/src Path_A1)
add_library(A1 STATIC ${Path_M1})#自定义,把A1创建为静态库
add_library(M1 STATIC ${Path_M1})
target_include_directories(A1 PUBLIC include)#自定义,把A1的include添加为可搜索文件
target_include_directories(M1 PUBLIC include)
target_link_libraries(M1 PUBLIC A1)