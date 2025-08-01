# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rviz_test: 2 messages, 0 services")

set(MSG_I_FLAGS "-Irviz_test:/home/c/demo_rviz/src/rviz_test/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rviz_test_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/c/demo_rviz/src/rviz_test/msg/Cone.msg" NAME_WE)
add_custom_target(_rviz_test_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rviz_test" "/home/c/demo_rviz/src/rviz_test/msg/Cone.msg" "geometry_msgs/Point:std_msgs/Float32:std_msgs/String"
)

get_filename_component(_filename "/home/c/demo_rviz/src/rviz_test/msg/ConeDetections.msg" NAME_WE)
add_custom_target(_rviz_test_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rviz_test" "/home/c/demo_rviz/src/rviz_test/msg/ConeDetections.msg" "rviz_test/Cone:geometry_msgs/Point:std_msgs/Header:std_msgs/Float32:std_msgs/String"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rviz_test
  "/home/c/demo_rviz/src/rviz_test/msg/Cone.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rviz_test
)
_generate_msg_cpp(rviz_test
  "/home/c/demo_rviz/src/rviz_test/msg/ConeDetections.msg"
  "${MSG_I_FLAGS}"
  "/home/c/demo_rviz/src/rviz_test/msg/Cone.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rviz_test
)

### Generating Services

### Generating Module File
_generate_module_cpp(rviz_test
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rviz_test
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rviz_test_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rviz_test_generate_messages rviz_test_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/c/demo_rviz/src/rviz_test/msg/Cone.msg" NAME_WE)
add_dependencies(rviz_test_generate_messages_cpp _rviz_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c/demo_rviz/src/rviz_test/msg/ConeDetections.msg" NAME_WE)
add_dependencies(rviz_test_generate_messages_cpp _rviz_test_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rviz_test_gencpp)
add_dependencies(rviz_test_gencpp rviz_test_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rviz_test_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rviz_test
  "/home/c/demo_rviz/src/rviz_test/msg/Cone.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rviz_test
)
_generate_msg_eus(rviz_test
  "/home/c/demo_rviz/src/rviz_test/msg/ConeDetections.msg"
  "${MSG_I_FLAGS}"
  "/home/c/demo_rviz/src/rviz_test/msg/Cone.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rviz_test
)

### Generating Services

### Generating Module File
_generate_module_eus(rviz_test
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rviz_test
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rviz_test_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rviz_test_generate_messages rviz_test_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/c/demo_rviz/src/rviz_test/msg/Cone.msg" NAME_WE)
add_dependencies(rviz_test_generate_messages_eus _rviz_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c/demo_rviz/src/rviz_test/msg/ConeDetections.msg" NAME_WE)
add_dependencies(rviz_test_generate_messages_eus _rviz_test_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rviz_test_geneus)
add_dependencies(rviz_test_geneus rviz_test_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rviz_test_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rviz_test
  "/home/c/demo_rviz/src/rviz_test/msg/Cone.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rviz_test
)
_generate_msg_lisp(rviz_test
  "/home/c/demo_rviz/src/rviz_test/msg/ConeDetections.msg"
  "${MSG_I_FLAGS}"
  "/home/c/demo_rviz/src/rviz_test/msg/Cone.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rviz_test
)

### Generating Services

### Generating Module File
_generate_module_lisp(rviz_test
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rviz_test
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rviz_test_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rviz_test_generate_messages rviz_test_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/c/demo_rviz/src/rviz_test/msg/Cone.msg" NAME_WE)
add_dependencies(rviz_test_generate_messages_lisp _rviz_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c/demo_rviz/src/rviz_test/msg/ConeDetections.msg" NAME_WE)
add_dependencies(rviz_test_generate_messages_lisp _rviz_test_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rviz_test_genlisp)
add_dependencies(rviz_test_genlisp rviz_test_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rviz_test_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rviz_test
  "/home/c/demo_rviz/src/rviz_test/msg/Cone.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rviz_test
)
_generate_msg_nodejs(rviz_test
  "/home/c/demo_rviz/src/rviz_test/msg/ConeDetections.msg"
  "${MSG_I_FLAGS}"
  "/home/c/demo_rviz/src/rviz_test/msg/Cone.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rviz_test
)

### Generating Services

### Generating Module File
_generate_module_nodejs(rviz_test
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rviz_test
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rviz_test_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rviz_test_generate_messages rviz_test_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/c/demo_rviz/src/rviz_test/msg/Cone.msg" NAME_WE)
add_dependencies(rviz_test_generate_messages_nodejs _rviz_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c/demo_rviz/src/rviz_test/msg/ConeDetections.msg" NAME_WE)
add_dependencies(rviz_test_generate_messages_nodejs _rviz_test_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rviz_test_gennodejs)
add_dependencies(rviz_test_gennodejs rviz_test_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rviz_test_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rviz_test
  "/home/c/demo_rviz/src/rviz_test/msg/Cone.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rviz_test
)
_generate_msg_py(rviz_test
  "/home/c/demo_rviz/src/rviz_test/msg/ConeDetections.msg"
  "${MSG_I_FLAGS}"
  "/home/c/demo_rviz/src/rviz_test/msg/Cone.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rviz_test
)

### Generating Services

### Generating Module File
_generate_module_py(rviz_test
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rviz_test
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rviz_test_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rviz_test_generate_messages rviz_test_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/c/demo_rviz/src/rviz_test/msg/Cone.msg" NAME_WE)
add_dependencies(rviz_test_generate_messages_py _rviz_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c/demo_rviz/src/rviz_test/msg/ConeDetections.msg" NAME_WE)
add_dependencies(rviz_test_generate_messages_py _rviz_test_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rviz_test_genpy)
add_dependencies(rviz_test_genpy rviz_test_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rviz_test_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rviz_test)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rviz_test
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rviz_test_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(rviz_test_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(rviz_test_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rviz_test)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rviz_test
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rviz_test_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(rviz_test_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(rviz_test_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rviz_test)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rviz_test
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rviz_test_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(rviz_test_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(rviz_test_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rviz_test)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rviz_test
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rviz_test_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(rviz_test_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(rviz_test_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rviz_test)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rviz_test\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rviz_test
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rviz_test_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(rviz_test_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(rviz_test_generate_messages_py sensor_msgs_generate_messages_py)
endif()
