# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "calibration_msgs: 13 messages, 2 services")

set(MSG_I_FLAGS "-Icalibration_msgs:/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg;-Icalibration_msgs:/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(calibration_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionGoal.msg" NAME_WE)
add_custom_target(_calibration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "calibration_msgs" "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionGoal.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:calibration_msgs/Checkerboard:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2DArray.msg" NAME_WE)
add_custom_target(_calibration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "calibration_msgs" "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2DArray.msg" "calibration_msgs/Point2D:std_msgs/Header"
)

get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/srv/GetDeviceInfo.srv" NAME_WE)
add_custom_target(_calibration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "calibration_msgs" "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/srv/GetDeviceInfo.srv" "sensor_msgs/RegionOfInterest:std_msgs/Header:sensor_msgs/CameraInfo:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Transform:geometry_msgs/TransformStamped:calibration_msgs/Polynomial"
)

get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionResult.msg" NAME_WE)
add_custom_target(_calibration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "calibration_msgs" "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionResult.msg" "std_msgs/Header:geometry_msgs/Point:calibration_msgs/CheckerboardExtractionResult:calibration_msgs/Point2D:calibration_msgs/PointArray:actionlib_msgs/GoalID:calibration_msgs/Point2DArray:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/CalibrationPose.msg" NAME_WE)
add_custom_target(_calibration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "calibration_msgs" "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/CalibrationPose.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Checkerboard.msg" NAME_WE)
add_custom_target(_calibration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "calibration_msgs" "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Checkerboard.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Polynomial.msg" NAME_WE)
add_custom_target(_calibration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "calibration_msgs" "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Polynomial.msg" ""
)

get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/srv/GetCalibrationResults.srv" NAME_WE)
add_custom_target(_calibration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "calibration_msgs" "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/srv/GetCalibrationResults.srv" "geometry_msgs/Quaternion:calibration_msgs/CalibrationPose:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2D.msg" NAME_WE)
add_custom_target(_calibration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "calibration_msgs" "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2D.msg" ""
)

get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/PointArray.msg" NAME_WE)
add_custom_target(_calibration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "calibration_msgs" "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/PointArray.msg" "std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionGoal.msg" NAME_WE)
add_custom_target(_calibration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "calibration_msgs" "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionGoal.msg" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:calibration_msgs/Checkerboard:geometry_msgs/Point:calibration_msgs/CheckerboardExtractionGoal:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionFeedback.msg" NAME_WE)
add_custom_target(_calibration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "calibration_msgs" "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionFeedback.msg" ""
)

get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionAction.msg" NAME_WE)
add_custom_target(_calibration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "calibration_msgs" "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionAction.msg" "geometry_msgs/Pose:std_msgs/Header:calibration_msgs/CheckerboardExtractionActionGoal:geometry_msgs/Quaternion:calibration_msgs/Checkerboard:geometry_msgs/Point:calibration_msgs/CheckerboardExtractionGoal:calibration_msgs/Point2D:calibration_msgs/CheckerboardExtractionResult:calibration_msgs/CheckerboardExtractionActionResult:calibration_msgs/CheckerboardExtractionActionFeedback:calibration_msgs/PointArray:actionlib_msgs/GoalID:calibration_msgs/Point2DArray:calibration_msgs/CheckerboardExtractionFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionFeedback.msg" NAME_WE)
add_custom_target(_calibration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "calibration_msgs" "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionFeedback.msg" "actionlib_msgs/GoalID:std_msgs/Header:calibration_msgs/CheckerboardExtractionFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionResult.msg" NAME_WE)
add_custom_target(_calibration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "calibration_msgs" "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionResult.msg" "calibration_msgs/Point2D:calibration_msgs/PointArray:calibration_msgs/Point2DArray:std_msgs/Header:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Checkerboard.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/calibration_msgs
)
_generate_msg_cpp(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2DArray.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/calibration_msgs
)
_generate_msg_cpp(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionResult.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2D.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/PointArray.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2DArray.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/calibration_msgs
)
_generate_msg_cpp(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/CalibrationPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/calibration_msgs
)
_generate_msg_cpp(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Checkerboard.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/calibration_msgs
)
_generate_msg_cpp(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Polynomial.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/calibration_msgs
)
_generate_msg_cpp(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/calibration_msgs
)
_generate_msg_cpp(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/PointArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/calibration_msgs
)
_generate_msg_cpp(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Checkerboard.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/calibration_msgs
)
_generate_msg_cpp(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/calibration_msgs
)
_generate_msg_cpp(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Checkerboard.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionGoal.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2D.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionResult.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionResult.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionFeedback.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/PointArray.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2DArray.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/calibration_msgs
)
_generate_msg_cpp(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/calibration_msgs
)
_generate_msg_cpp(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2D.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/PointArray.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2DArray.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/calibration_msgs
)

### Generating Services
_generate_srv_cpp(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/srv/GetDeviceInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Polynomial.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/calibration_msgs
)
_generate_srv_cpp(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/srv/GetCalibrationResults.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/CalibrationPose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/calibration_msgs
)

### Generating Module File
_generate_module_cpp(calibration_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/calibration_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(calibration_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(calibration_msgs_generate_messages calibration_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionGoal.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_cpp _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2DArray.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_cpp _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/srv/GetDeviceInfo.srv" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_cpp _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionResult.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_cpp _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/CalibrationPose.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_cpp _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Checkerboard.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_cpp _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Polynomial.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_cpp _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/srv/GetCalibrationResults.srv" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_cpp _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2D.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_cpp _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/PointArray.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_cpp _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionGoal.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_cpp _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionFeedback.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_cpp _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionAction.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_cpp _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionFeedback.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_cpp _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionResult.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_cpp _calibration_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(calibration_msgs_gencpp)
add_dependencies(calibration_msgs_gencpp calibration_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS calibration_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Checkerboard.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/calibration_msgs
)
_generate_msg_eus(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2DArray.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/calibration_msgs
)
_generate_msg_eus(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionResult.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2D.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/PointArray.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2DArray.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/calibration_msgs
)
_generate_msg_eus(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/CalibrationPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/calibration_msgs
)
_generate_msg_eus(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Checkerboard.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/calibration_msgs
)
_generate_msg_eus(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Polynomial.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/calibration_msgs
)
_generate_msg_eus(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/calibration_msgs
)
_generate_msg_eus(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/PointArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/calibration_msgs
)
_generate_msg_eus(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Checkerboard.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/calibration_msgs
)
_generate_msg_eus(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/calibration_msgs
)
_generate_msg_eus(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Checkerboard.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionGoal.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2D.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionResult.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionResult.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionFeedback.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/PointArray.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2DArray.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/calibration_msgs
)
_generate_msg_eus(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/calibration_msgs
)
_generate_msg_eus(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2D.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/PointArray.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2DArray.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/calibration_msgs
)

### Generating Services
_generate_srv_eus(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/srv/GetDeviceInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Polynomial.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/calibration_msgs
)
_generate_srv_eus(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/srv/GetCalibrationResults.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/CalibrationPose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/calibration_msgs
)

### Generating Module File
_generate_module_eus(calibration_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/calibration_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(calibration_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(calibration_msgs_generate_messages calibration_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionGoal.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_eus _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2DArray.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_eus _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/srv/GetDeviceInfo.srv" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_eus _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionResult.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_eus _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/CalibrationPose.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_eus _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Checkerboard.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_eus _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Polynomial.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_eus _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/srv/GetCalibrationResults.srv" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_eus _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2D.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_eus _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/PointArray.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_eus _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionGoal.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_eus _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionFeedback.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_eus _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionAction.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_eus _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionFeedback.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_eus _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionResult.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_eus _calibration_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(calibration_msgs_geneus)
add_dependencies(calibration_msgs_geneus calibration_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS calibration_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Checkerboard.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/calibration_msgs
)
_generate_msg_lisp(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2DArray.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/calibration_msgs
)
_generate_msg_lisp(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionResult.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2D.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/PointArray.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2DArray.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/calibration_msgs
)
_generate_msg_lisp(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/CalibrationPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/calibration_msgs
)
_generate_msg_lisp(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Checkerboard.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/calibration_msgs
)
_generate_msg_lisp(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Polynomial.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/calibration_msgs
)
_generate_msg_lisp(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/calibration_msgs
)
_generate_msg_lisp(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/PointArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/calibration_msgs
)
_generate_msg_lisp(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Checkerboard.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/calibration_msgs
)
_generate_msg_lisp(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/calibration_msgs
)
_generate_msg_lisp(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Checkerboard.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionGoal.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2D.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionResult.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionResult.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionFeedback.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/PointArray.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2DArray.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/calibration_msgs
)
_generate_msg_lisp(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/calibration_msgs
)
_generate_msg_lisp(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2D.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/PointArray.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2DArray.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/calibration_msgs
)

### Generating Services
_generate_srv_lisp(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/srv/GetDeviceInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Polynomial.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/calibration_msgs
)
_generate_srv_lisp(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/srv/GetCalibrationResults.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/CalibrationPose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/calibration_msgs
)

### Generating Module File
_generate_module_lisp(calibration_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/calibration_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(calibration_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(calibration_msgs_generate_messages calibration_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionGoal.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_lisp _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2DArray.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_lisp _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/srv/GetDeviceInfo.srv" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_lisp _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionResult.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_lisp _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/CalibrationPose.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_lisp _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Checkerboard.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_lisp _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Polynomial.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_lisp _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/srv/GetCalibrationResults.srv" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_lisp _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2D.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_lisp _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/PointArray.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_lisp _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionGoal.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_lisp _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionFeedback.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_lisp _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionAction.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_lisp _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionFeedback.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_lisp _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionResult.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_lisp _calibration_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(calibration_msgs_genlisp)
add_dependencies(calibration_msgs_genlisp calibration_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS calibration_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Checkerboard.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/calibration_msgs
)
_generate_msg_nodejs(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2DArray.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/calibration_msgs
)
_generate_msg_nodejs(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionResult.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2D.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/PointArray.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2DArray.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/calibration_msgs
)
_generate_msg_nodejs(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/CalibrationPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/calibration_msgs
)
_generate_msg_nodejs(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Checkerboard.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/calibration_msgs
)
_generate_msg_nodejs(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Polynomial.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/calibration_msgs
)
_generate_msg_nodejs(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/calibration_msgs
)
_generate_msg_nodejs(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/PointArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/calibration_msgs
)
_generate_msg_nodejs(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Checkerboard.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/calibration_msgs
)
_generate_msg_nodejs(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/calibration_msgs
)
_generate_msg_nodejs(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Checkerboard.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionGoal.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2D.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionResult.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionResult.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionFeedback.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/PointArray.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2DArray.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/calibration_msgs
)
_generate_msg_nodejs(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/calibration_msgs
)
_generate_msg_nodejs(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2D.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/PointArray.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2DArray.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/calibration_msgs
)

### Generating Services
_generate_srv_nodejs(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/srv/GetDeviceInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Polynomial.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/calibration_msgs
)
_generate_srv_nodejs(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/srv/GetCalibrationResults.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/CalibrationPose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/calibration_msgs
)

### Generating Module File
_generate_module_nodejs(calibration_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/calibration_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(calibration_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(calibration_msgs_generate_messages calibration_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionGoal.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_nodejs _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2DArray.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_nodejs _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/srv/GetDeviceInfo.srv" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_nodejs _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionResult.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_nodejs _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/CalibrationPose.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_nodejs _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Checkerboard.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_nodejs _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Polynomial.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_nodejs _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/srv/GetCalibrationResults.srv" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_nodejs _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2D.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_nodejs _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/PointArray.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_nodejs _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionGoal.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_nodejs _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionFeedback.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_nodejs _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionAction.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_nodejs _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionFeedback.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_nodejs _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionResult.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_nodejs _calibration_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(calibration_msgs_gennodejs)
add_dependencies(calibration_msgs_gennodejs calibration_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS calibration_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Checkerboard.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/calibration_msgs
)
_generate_msg_py(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2DArray.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2D.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/calibration_msgs
)
_generate_msg_py(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionResult.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2D.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/PointArray.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2DArray.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/calibration_msgs
)
_generate_msg_py(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/CalibrationPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/calibration_msgs
)
_generate_msg_py(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Checkerboard.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/calibration_msgs
)
_generate_msg_py(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Polynomial.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/calibration_msgs
)
_generate_msg_py(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/calibration_msgs
)
_generate_msg_py(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/PointArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/calibration_msgs
)
_generate_msg_py(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Checkerboard.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/calibration_msgs
)
_generate_msg_py(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/calibration_msgs
)
_generate_msg_py(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Checkerboard.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionGoal.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2D.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionResult.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionResult.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionFeedback.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/PointArray.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2DArray.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/calibration_msgs
)
_generate_msg_py(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/calibration_msgs
)
_generate_msg_py(calibration_msgs
  "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2D.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/PointArray.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2DArray.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/calibration_msgs
)

### Generating Services
_generate_srv_py(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/srv/GetDeviceInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Polynomial.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/calibration_msgs
)
_generate_srv_py(calibration_msgs
  "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/srv/GetCalibrationResults.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/CalibrationPose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/calibration_msgs
)

### Generating Module File
_generate_module_py(calibration_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/calibration_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(calibration_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(calibration_msgs_generate_messages calibration_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionGoal.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_py _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2DArray.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_py _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/srv/GetDeviceInfo.srv" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_py _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionResult.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_py _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/CalibrationPose.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_py _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Checkerboard.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_py _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Polynomial.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_py _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/srv/GetCalibrationResults.srv" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_py _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/Point2D.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_py _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/src/calibration_toolkit/calibration_msgs/msg/PointArray.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_py _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionGoal.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_py _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionFeedback.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_py _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionAction.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_py _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionActionFeedback.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_py _calibration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/calibration_msgs/share/calibration_msgs/msg/CheckerboardExtractionResult.msg" NAME_WE)
add_dependencies(calibration_msgs_generate_messages_py _calibration_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(calibration_msgs_genpy)
add_dependencies(calibration_msgs_genpy calibration_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS calibration_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/calibration_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/calibration_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(calibration_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(calibration_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/calibration_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/calibration_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(calibration_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(calibration_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/calibration_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/calibration_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(calibration_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(calibration_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/calibration_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/calibration_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(calibration_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(calibration_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/calibration_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/calibration_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/calibration_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(calibration_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(calibration_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
