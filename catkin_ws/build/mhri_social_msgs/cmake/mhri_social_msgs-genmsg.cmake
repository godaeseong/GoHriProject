# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mhri_social_msgs: 2 messages, 0 services")

set(MSG_I_FLAGS "-Imhri_social_msgs:/home/hri/catkin_ws/src/mhri_workspace/mhri_social_msgs/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mhri_social_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/hri/catkin_ws/src/mhri_workspace/mhri_social_msgs/msg/RecognizedWord.msg" NAME_WE)
add_custom_target(_mhri_social_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mhri_social_msgs" "/home/hri/catkin_ws/src/mhri_workspace/mhri_social_msgs/msg/RecognizedWord.msg" ""
)

get_filename_component(_filename "/home/hri/catkin_ws/src/mhri_workspace/mhri_social_msgs/msg/FaceDetection3D.msg" NAME_WE)
add_custom_target(_mhri_social_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mhri_social_msgs" "/home/hri/catkin_ws/src/mhri_workspace/mhri_social_msgs/msg/FaceDetection3D.msg" "geometry_msgs/Point:sensor_msgs/Image:geometry_msgs/PointStamped:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mhri_social_msgs
  "/home/hri/catkin_ws/src/mhri_workspace/mhri_social_msgs/msg/RecognizedWord.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mhri_social_msgs
)
_generate_msg_cpp(mhri_social_msgs
  "/home/hri/catkin_ws/src/mhri_workspace/mhri_social_msgs/msg/FaceDetection3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mhri_social_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(mhri_social_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mhri_social_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mhri_social_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mhri_social_msgs_generate_messages mhri_social_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hri/catkin_ws/src/mhri_workspace/mhri_social_msgs/msg/RecognizedWord.msg" NAME_WE)
add_dependencies(mhri_social_msgs_generate_messages_cpp _mhri_social_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/mhri_workspace/mhri_social_msgs/msg/FaceDetection3D.msg" NAME_WE)
add_dependencies(mhri_social_msgs_generate_messages_cpp _mhri_social_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mhri_social_msgs_gencpp)
add_dependencies(mhri_social_msgs_gencpp mhri_social_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mhri_social_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mhri_social_msgs
  "/home/hri/catkin_ws/src/mhri_workspace/mhri_social_msgs/msg/RecognizedWord.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mhri_social_msgs
)
_generate_msg_eus(mhri_social_msgs
  "/home/hri/catkin_ws/src/mhri_workspace/mhri_social_msgs/msg/FaceDetection3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mhri_social_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(mhri_social_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mhri_social_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mhri_social_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mhri_social_msgs_generate_messages mhri_social_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hri/catkin_ws/src/mhri_workspace/mhri_social_msgs/msg/RecognizedWord.msg" NAME_WE)
add_dependencies(mhri_social_msgs_generate_messages_eus _mhri_social_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/mhri_workspace/mhri_social_msgs/msg/FaceDetection3D.msg" NAME_WE)
add_dependencies(mhri_social_msgs_generate_messages_eus _mhri_social_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mhri_social_msgs_geneus)
add_dependencies(mhri_social_msgs_geneus mhri_social_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mhri_social_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mhri_social_msgs
  "/home/hri/catkin_ws/src/mhri_workspace/mhri_social_msgs/msg/RecognizedWord.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mhri_social_msgs
)
_generate_msg_lisp(mhri_social_msgs
  "/home/hri/catkin_ws/src/mhri_workspace/mhri_social_msgs/msg/FaceDetection3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mhri_social_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(mhri_social_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mhri_social_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mhri_social_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mhri_social_msgs_generate_messages mhri_social_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hri/catkin_ws/src/mhri_workspace/mhri_social_msgs/msg/RecognizedWord.msg" NAME_WE)
add_dependencies(mhri_social_msgs_generate_messages_lisp _mhri_social_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/mhri_workspace/mhri_social_msgs/msg/FaceDetection3D.msg" NAME_WE)
add_dependencies(mhri_social_msgs_generate_messages_lisp _mhri_social_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mhri_social_msgs_genlisp)
add_dependencies(mhri_social_msgs_genlisp mhri_social_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mhri_social_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mhri_social_msgs
  "/home/hri/catkin_ws/src/mhri_workspace/mhri_social_msgs/msg/RecognizedWord.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mhri_social_msgs
)
_generate_msg_nodejs(mhri_social_msgs
  "/home/hri/catkin_ws/src/mhri_workspace/mhri_social_msgs/msg/FaceDetection3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mhri_social_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(mhri_social_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mhri_social_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mhri_social_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mhri_social_msgs_generate_messages mhri_social_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hri/catkin_ws/src/mhri_workspace/mhri_social_msgs/msg/RecognizedWord.msg" NAME_WE)
add_dependencies(mhri_social_msgs_generate_messages_nodejs _mhri_social_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/mhri_workspace/mhri_social_msgs/msg/FaceDetection3D.msg" NAME_WE)
add_dependencies(mhri_social_msgs_generate_messages_nodejs _mhri_social_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mhri_social_msgs_gennodejs)
add_dependencies(mhri_social_msgs_gennodejs mhri_social_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mhri_social_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mhri_social_msgs
  "/home/hri/catkin_ws/src/mhri_workspace/mhri_social_msgs/msg/RecognizedWord.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mhri_social_msgs
)
_generate_msg_py(mhri_social_msgs
  "/home/hri/catkin_ws/src/mhri_workspace/mhri_social_msgs/msg/FaceDetection3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mhri_social_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(mhri_social_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mhri_social_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mhri_social_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mhri_social_msgs_generate_messages mhri_social_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hri/catkin_ws/src/mhri_workspace/mhri_social_msgs/msg/RecognizedWord.msg" NAME_WE)
add_dependencies(mhri_social_msgs_generate_messages_py _mhri_social_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/mhri_workspace/mhri_social_msgs/msg/FaceDetection3D.msg" NAME_WE)
add_dependencies(mhri_social_msgs_generate_messages_py _mhri_social_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mhri_social_msgs_genpy)
add_dependencies(mhri_social_msgs_genpy mhri_social_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mhri_social_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mhri_social_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mhri_social_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(mhri_social_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(mhri_social_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(mhri_social_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mhri_social_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mhri_social_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mhri_social_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(mhri_social_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(mhri_social_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(mhri_social_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mhri_social_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mhri_social_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mhri_social_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(mhri_social_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(mhri_social_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(mhri_social_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mhri_social_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mhri_social_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mhri_social_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(mhri_social_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(mhri_social_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(mhri_social_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mhri_social_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mhri_social_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mhri_social_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mhri_social_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(mhri_social_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(mhri_social_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(mhri_social_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mhri_social_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
