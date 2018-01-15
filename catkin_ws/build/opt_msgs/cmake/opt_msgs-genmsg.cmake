# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "opt_msgs: 12 messages, 2 services")

set(MSG_I_FLAGS "-Iopt_msgs:/home/hri/catkin_ws/src/openptrack/opt_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(opt_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/CalibrationStatus.msg" NAME_WE)
add_custom_target(_opt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "opt_msgs" "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/CalibrationStatus.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox2D.msg" NAME_WE)
add_custom_target(_opt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "opt_msgs" "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox2D.msg" ""
)

get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/RoiRect.msg" NAME_WE)
add_custom_target(_opt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "opt_msgs" "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/RoiRect.msg" ""
)

get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/HumanEntry.msg" NAME_WE)
add_custom_target(_opt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "opt_msgs" "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/HumanEntry.msg" ""
)

get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/DetectionArray.msg" NAME_WE)
add_custom_target(_opt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "opt_msgs" "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/DetectionArray.msg" "geometry_msgs/Vector3:opt_msgs/BoundingBox2D:opt_msgs/BoundingBox3D:std_msgs/Header:opt_msgs/Detection"
)

get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/srv/OPTSensor.srv" NAME_WE)
add_custom_target(_opt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "opt_msgs" "/home/hri/catkin_ws/src/openptrack/opt_msgs/srv/OPTSensor.srv" ""
)

get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Rois.msg" NAME_WE)
add_custom_target(_opt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "opt_msgs" "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Rois.msg" "opt_msgs/RoiRect:std_msgs/Header"
)

get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox3D.msg" NAME_WE)
add_custom_target(_opt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "opt_msgs" "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox3D.msg" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/TrackArray.msg" NAME_WE)
add_custom_target(_opt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "opt_msgs" "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/TrackArray.msg" "opt_msgs/BoundingBox2D:std_msgs/Header:opt_msgs/Track"
)

get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/IDArray.msg" NAME_WE)
add_custom_target(_opt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "opt_msgs" "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/IDArray.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/srv/OPTTransform.srv" NAME_WE)
add_custom_target(_opt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "opt_msgs" "/home/hri/catkin_ws/src/openptrack/opt_msgs/srv/OPTTransform.srv" "geometry_msgs/Quaternion:geometry_msgs/Transform:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Detection.msg" NAME_WE)
add_custom_target(_opt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "opt_msgs" "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Detection.msg" "opt_msgs/BoundingBox2D:opt_msgs/BoundingBox3D:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Track.msg" NAME_WE)
add_custom_target(_opt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "opt_msgs" "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Track.msg" "opt_msgs/BoundingBox2D"
)

get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/HumanEntries.msg" NAME_WE)
add_custom_target(_opt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "opt_msgs" "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/HumanEntries.msg" "std_msgs/Header:opt_msgs/HumanEntry"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/CalibrationStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/opt_msgs
)
_generate_msg_cpp(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/opt_msgs
)
_generate_msg_cpp(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/RoiRect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/opt_msgs
)
_generate_msg_cpp(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/HumanEntry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/opt_msgs
)
_generate_msg_cpp(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/DetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox2D.msg;/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox3D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Detection.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/opt_msgs
)
_generate_msg_cpp(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Rois.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/RoiRect.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/opt_msgs
)
_generate_msg_cpp(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/opt_msgs
)
_generate_msg_cpp(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/TrackArray.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox2D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Track.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/opt_msgs
)
_generate_msg_cpp(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/IDArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/opt_msgs
)
_generate_msg_cpp(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Detection.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox2D.msg;/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox3D.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/opt_msgs
)
_generate_msg_cpp(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Track.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/opt_msgs
)
_generate_msg_cpp(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/HumanEntries.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/HumanEntry.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/opt_msgs
)

### Generating Services
_generate_srv_cpp(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/srv/OPTTransform.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/opt_msgs
)
_generate_srv_cpp(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/srv/OPTSensor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/opt_msgs
)

### Generating Module File
_generate_module_cpp(opt_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/opt_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(opt_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(opt_msgs_generate_messages opt_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/CalibrationStatus.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_cpp _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox2D.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_cpp _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/RoiRect.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_cpp _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/HumanEntry.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_cpp _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/DetectionArray.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_cpp _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/srv/OPTSensor.srv" NAME_WE)
add_dependencies(opt_msgs_generate_messages_cpp _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Rois.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_cpp _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox3D.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_cpp _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/TrackArray.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_cpp _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/IDArray.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_cpp _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/srv/OPTTransform.srv" NAME_WE)
add_dependencies(opt_msgs_generate_messages_cpp _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Detection.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_cpp _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Track.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_cpp _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/HumanEntries.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_cpp _opt_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(opt_msgs_gencpp)
add_dependencies(opt_msgs_gencpp opt_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS opt_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/CalibrationStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/opt_msgs
)
_generate_msg_eus(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/opt_msgs
)
_generate_msg_eus(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/RoiRect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/opt_msgs
)
_generate_msg_eus(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/HumanEntry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/opt_msgs
)
_generate_msg_eus(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/DetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox2D.msg;/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox3D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Detection.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/opt_msgs
)
_generate_msg_eus(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Rois.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/RoiRect.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/opt_msgs
)
_generate_msg_eus(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/opt_msgs
)
_generate_msg_eus(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/TrackArray.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox2D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Track.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/opt_msgs
)
_generate_msg_eus(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/IDArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/opt_msgs
)
_generate_msg_eus(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Detection.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox2D.msg;/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox3D.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/opt_msgs
)
_generate_msg_eus(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Track.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/opt_msgs
)
_generate_msg_eus(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/HumanEntries.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/HumanEntry.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/opt_msgs
)

### Generating Services
_generate_srv_eus(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/srv/OPTTransform.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/opt_msgs
)
_generate_srv_eus(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/srv/OPTSensor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/opt_msgs
)

### Generating Module File
_generate_module_eus(opt_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/opt_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(opt_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(opt_msgs_generate_messages opt_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/CalibrationStatus.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_eus _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox2D.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_eus _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/RoiRect.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_eus _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/HumanEntry.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_eus _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/DetectionArray.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_eus _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/srv/OPTSensor.srv" NAME_WE)
add_dependencies(opt_msgs_generate_messages_eus _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Rois.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_eus _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox3D.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_eus _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/TrackArray.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_eus _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/IDArray.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_eus _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/srv/OPTTransform.srv" NAME_WE)
add_dependencies(opt_msgs_generate_messages_eus _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Detection.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_eus _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Track.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_eus _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/HumanEntries.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_eus _opt_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(opt_msgs_geneus)
add_dependencies(opt_msgs_geneus opt_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS opt_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/CalibrationStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/opt_msgs
)
_generate_msg_lisp(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/opt_msgs
)
_generate_msg_lisp(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/RoiRect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/opt_msgs
)
_generate_msg_lisp(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/HumanEntry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/opt_msgs
)
_generate_msg_lisp(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/DetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox2D.msg;/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox3D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Detection.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/opt_msgs
)
_generate_msg_lisp(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Rois.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/RoiRect.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/opt_msgs
)
_generate_msg_lisp(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/opt_msgs
)
_generate_msg_lisp(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/TrackArray.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox2D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Track.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/opt_msgs
)
_generate_msg_lisp(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/IDArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/opt_msgs
)
_generate_msg_lisp(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Detection.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox2D.msg;/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox3D.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/opt_msgs
)
_generate_msg_lisp(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Track.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/opt_msgs
)
_generate_msg_lisp(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/HumanEntries.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/HumanEntry.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/opt_msgs
)

### Generating Services
_generate_srv_lisp(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/srv/OPTTransform.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/opt_msgs
)
_generate_srv_lisp(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/srv/OPTSensor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/opt_msgs
)

### Generating Module File
_generate_module_lisp(opt_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/opt_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(opt_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(opt_msgs_generate_messages opt_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/CalibrationStatus.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_lisp _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox2D.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_lisp _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/RoiRect.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_lisp _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/HumanEntry.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_lisp _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/DetectionArray.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_lisp _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/srv/OPTSensor.srv" NAME_WE)
add_dependencies(opt_msgs_generate_messages_lisp _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Rois.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_lisp _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox3D.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_lisp _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/TrackArray.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_lisp _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/IDArray.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_lisp _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/srv/OPTTransform.srv" NAME_WE)
add_dependencies(opt_msgs_generate_messages_lisp _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Detection.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_lisp _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Track.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_lisp _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/HumanEntries.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_lisp _opt_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(opt_msgs_genlisp)
add_dependencies(opt_msgs_genlisp opt_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS opt_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/CalibrationStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/opt_msgs
)
_generate_msg_nodejs(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/opt_msgs
)
_generate_msg_nodejs(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/RoiRect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/opt_msgs
)
_generate_msg_nodejs(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/HumanEntry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/opt_msgs
)
_generate_msg_nodejs(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/DetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox2D.msg;/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox3D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Detection.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/opt_msgs
)
_generate_msg_nodejs(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Rois.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/RoiRect.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/opt_msgs
)
_generate_msg_nodejs(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/opt_msgs
)
_generate_msg_nodejs(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/TrackArray.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox2D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Track.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/opt_msgs
)
_generate_msg_nodejs(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/IDArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/opt_msgs
)
_generate_msg_nodejs(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Detection.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox2D.msg;/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox3D.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/opt_msgs
)
_generate_msg_nodejs(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Track.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/opt_msgs
)
_generate_msg_nodejs(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/HumanEntries.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/HumanEntry.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/opt_msgs
)

### Generating Services
_generate_srv_nodejs(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/srv/OPTTransform.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/opt_msgs
)
_generate_srv_nodejs(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/srv/OPTSensor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/opt_msgs
)

### Generating Module File
_generate_module_nodejs(opt_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/opt_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(opt_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(opt_msgs_generate_messages opt_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/CalibrationStatus.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_nodejs _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox2D.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_nodejs _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/RoiRect.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_nodejs _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/HumanEntry.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_nodejs _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/DetectionArray.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_nodejs _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/srv/OPTSensor.srv" NAME_WE)
add_dependencies(opt_msgs_generate_messages_nodejs _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Rois.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_nodejs _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox3D.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_nodejs _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/TrackArray.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_nodejs _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/IDArray.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_nodejs _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/srv/OPTTransform.srv" NAME_WE)
add_dependencies(opt_msgs_generate_messages_nodejs _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Detection.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_nodejs _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Track.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_nodejs _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/HumanEntries.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_nodejs _opt_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(opt_msgs_gennodejs)
add_dependencies(opt_msgs_gennodejs opt_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS opt_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/CalibrationStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/opt_msgs
)
_generate_msg_py(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/opt_msgs
)
_generate_msg_py(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/RoiRect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/opt_msgs
)
_generate_msg_py(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/HumanEntry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/opt_msgs
)
_generate_msg_py(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/DetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox2D.msg;/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox3D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Detection.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/opt_msgs
)
_generate_msg_py(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Rois.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/RoiRect.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/opt_msgs
)
_generate_msg_py(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/opt_msgs
)
_generate_msg_py(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/TrackArray.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox2D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Track.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/opt_msgs
)
_generate_msg_py(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/IDArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/opt_msgs
)
_generate_msg_py(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Detection.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox2D.msg;/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox3D.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/opt_msgs
)
_generate_msg_py(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Track.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/opt_msgs
)
_generate_msg_py(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/HumanEntries.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/HumanEntry.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/opt_msgs
)

### Generating Services
_generate_srv_py(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/srv/OPTTransform.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/opt_msgs
)
_generate_srv_py(opt_msgs
  "/home/hri/catkin_ws/src/openptrack/opt_msgs/srv/OPTSensor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/opt_msgs
)

### Generating Module File
_generate_module_py(opt_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/opt_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(opt_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(opt_msgs_generate_messages opt_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/CalibrationStatus.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_py _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox2D.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_py _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/RoiRect.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_py _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/HumanEntry.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_py _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/DetectionArray.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_py _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/srv/OPTSensor.srv" NAME_WE)
add_dependencies(opt_msgs_generate_messages_py _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Rois.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_py _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/BoundingBox3D.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_py _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/TrackArray.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_py _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/IDArray.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_py _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/srv/OPTTransform.srv" NAME_WE)
add_dependencies(opt_msgs_generate_messages_py _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Detection.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_py _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/Track.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_py _opt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/openptrack/opt_msgs/msg/HumanEntries.msg" NAME_WE)
add_dependencies(opt_msgs_generate_messages_py _opt_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(opt_msgs_genpy)
add_dependencies(opt_msgs_genpy opt_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS opt_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/opt_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/opt_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(opt_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(opt_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(opt_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/opt_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/opt_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(opt_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(opt_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(opt_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/opt_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/opt_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(opt_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(opt_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(opt_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/opt_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/opt_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(opt_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(opt_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(opt_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/opt_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/opt_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/opt_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(opt_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(opt_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(opt_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
