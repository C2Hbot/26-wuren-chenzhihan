find_package(OpenCV REQUIRED) #每个cmakelists都要写不然就报错找不到库(😅)
aux_source_directory(src Path_M1)
add_library(A1 STATIC ../A1/src/A11.cpp ../A1/src/A12.cpp ../A1/src/A13.cpp ../A1/include/A1.h)
add_library(A2 STATIC ../A2/src/A2.cpp ../A2/include/A2.h)
add_library(M2 STATIC ../M2/src/M2.cpp ../M2/include/M2.h ../../common/kalman/include/KalmanFilterX.hpp)
add_library(M1 STATIC ${Path_M1})
#建库，因为自己不熟悉变量名的使用，用了这种又臭又长的写法。  .. 回到上一级

target_include_directories(A1 PUBLIC ../A1/include)
target_include_directories(A2 PUBLIC ../A2/include)
target_include_directories(M2 PUBLIC ../M2/include ../A2/include ../A1/include ../../common/kalman/include ${OpenCV_INCLUDE_DIRS})
target_include_directories(M1 PUBLIC include)
#包含《所有》头文件目录

target_link_libraries(M2 PUBLIC A2) #被这句话硬控好久,才发现M2与A2,A1有依赖关系,不过我不写A1居然也没事？？？
target_link_libraries(M1 PUBLIC A1 A2 M2) #链接库，虽然M1与A2，M2没关系，但是既然能动就不要改了()
#或许库的链接是一种并联的关系，但是M2与A2 link 这句话又不能不写？

#后来想了一下，这些库的构建和链接应该放在外面modules下的cmakelists的