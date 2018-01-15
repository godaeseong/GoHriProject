# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "polly_speech: 7 messages, 0 services")

set(MSG_I_FLAGS "-Ipolly_speech:/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(polly_speech_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechAction.msg" NAME_WE)
add_custom_target(_polly_speech_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "polly_speech" "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechAction.msg" "polly_speech/SpeechResult:std_msgs/Header:polly_speech/SpeechActionGoal:polly_speech/SpeechFeedback:polly_speech/SpeechActionResult:polly_speech/SpeechActionFeedback:actionlib_msgs/GoalID:polly_speech/SpeechGoal:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionGoal.msg" NAME_WE)
add_custom_target(_polly_speech_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "polly_speech" "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:polly_speech/SpeechGoal"
)

get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionFeedback.msg" NAME_WE)
add_custom_target(_polly_speech_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "polly_speech" "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionFeedback.msg" "actionlib_msgs/GoalID:std_msgs/Header:polly_speech/SpeechFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechResult.msg" NAME_WE)
add_custom_target(_polly_speech_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "polly_speech" "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechResult.msg" ""
)

get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechGoal.msg" NAME_WE)
add_custom_target(_polly_speech_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "polly_speech" "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechGoal.msg" ""
)

get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionResult.msg" NAME_WE)
add_custom_target(_polly_speech_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "polly_speech" "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionResult.msg" "actionlib_msgs/GoalID:std_msgs/Header:polly_speech/SpeechResult:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechFeedback.msg" NAME_WE)
add_custom_target(_polly_speech_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "polly_speech" "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechAction.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionGoal.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechFeedback.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionResult.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/polly_speech
)
_generate_msg_cpp(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/polly_speech
)
_generate_msg_cpp(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/polly_speech
)
_generate_msg_cpp(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/polly_speech
)
_generate_msg_cpp(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/polly_speech
)
_generate_msg_cpp(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/polly_speech
)
_generate_msg_cpp(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/polly_speech
)

### Generating Services

### Generating Module File
_generate_module_cpp(polly_speech
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/polly_speech
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(polly_speech_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(polly_speech_generate_messages polly_speech_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechAction.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_cpp _polly_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionGoal.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_cpp _polly_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionFeedback.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_cpp _polly_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechResult.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_cpp _polly_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechGoal.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_cpp _polly_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionResult.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_cpp _polly_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechFeedback.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_cpp _polly_speech_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(polly_speech_gencpp)
add_dependencies(polly_speech_gencpp polly_speech_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS polly_speech_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechAction.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionGoal.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechFeedback.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionResult.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/polly_speech
)
_generate_msg_eus(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/polly_speech
)
_generate_msg_eus(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/polly_speech
)
_generate_msg_eus(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/polly_speech
)
_generate_msg_eus(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/polly_speech
)
_generate_msg_eus(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/polly_speech
)
_generate_msg_eus(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/polly_speech
)

### Generating Services

### Generating Module File
_generate_module_eus(polly_speech
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/polly_speech
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(polly_speech_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(polly_speech_generate_messages polly_speech_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechAction.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_eus _polly_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionGoal.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_eus _polly_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionFeedback.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_eus _polly_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechResult.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_eus _polly_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechGoal.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_eus _polly_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionResult.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_eus _polly_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechFeedback.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_eus _polly_speech_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(polly_speech_geneus)
add_dependencies(polly_speech_geneus polly_speech_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS polly_speech_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechAction.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionGoal.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechFeedback.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionResult.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/polly_speech
)
_generate_msg_lisp(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/polly_speech
)
_generate_msg_lisp(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/polly_speech
)
_generate_msg_lisp(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/polly_speech
)
_generate_msg_lisp(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/polly_speech
)
_generate_msg_lisp(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/polly_speech
)
_generate_msg_lisp(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/polly_speech
)

### Generating Services

### Generating Module File
_generate_module_lisp(polly_speech
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/polly_speech
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(polly_speech_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(polly_speech_generate_messages polly_speech_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechAction.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_lisp _polly_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionGoal.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_lisp _polly_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionFeedback.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_lisp _polly_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechResult.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_lisp _polly_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechGoal.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_lisp _polly_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionResult.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_lisp _polly_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechFeedback.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_lisp _polly_speech_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(polly_speech_genlisp)
add_dependencies(polly_speech_genlisp polly_speech_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS polly_speech_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechAction.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionGoal.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechFeedback.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionResult.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/polly_speech
)
_generate_msg_nodejs(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/polly_speech
)
_generate_msg_nodejs(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/polly_speech
)
_generate_msg_nodejs(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/polly_speech
)
_generate_msg_nodejs(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/polly_speech
)
_generate_msg_nodejs(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/polly_speech
)
_generate_msg_nodejs(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/polly_speech
)

### Generating Services

### Generating Module File
_generate_module_nodejs(polly_speech
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/polly_speech
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(polly_speech_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(polly_speech_generate_messages polly_speech_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechAction.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_nodejs _polly_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionGoal.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_nodejs _polly_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionFeedback.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_nodejs _polly_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechResult.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_nodejs _polly_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechGoal.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_nodejs _polly_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionResult.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_nodejs _polly_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechFeedback.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_nodejs _polly_speech_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(polly_speech_gennodejs)
add_dependencies(polly_speech_gennodejs polly_speech_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS polly_speech_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechAction.msg"
  "${MSG_I_FLAGS}"
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionGoal.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechFeedback.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionResult.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/polly_speech
)
_generate_msg_py(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/polly_speech
)
_generate_msg_py(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/polly_speech
)
_generate_msg_py(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/polly_speech
)
_generate_msg_py(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/polly_speech
)
_generate_msg_py(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/polly_speech
)
_generate_msg_py(polly_speech
  "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/polly_speech
)

### Generating Services

### Generating Module File
_generate_module_py(polly_speech
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/polly_speech
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(polly_speech_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(polly_speech_generate_messages polly_speech_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechAction.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_py _polly_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionGoal.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_py _polly_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionFeedback.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_py _polly_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechResult.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_py _polly_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechGoal.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_py _polly_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechActionResult.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_py _polly_speech_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hri/catkin_ws/devel/.private/polly_speech/share/polly_speech/msg/SpeechFeedback.msg" NAME_WE)
add_dependencies(polly_speech_generate_messages_py _polly_speech_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(polly_speech_genpy)
add_dependencies(polly_speech_genpy polly_speech_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS polly_speech_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/polly_speech)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/polly_speech
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(polly_speech_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(polly_speech_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/polly_speech)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/polly_speech
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(polly_speech_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(polly_speech_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/polly_speech)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/polly_speech
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(polly_speech_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(polly_speech_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/polly_speech)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/polly_speech
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(polly_speech_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(polly_speech_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/polly_speech)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/polly_speech\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/polly_speech
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(polly_speech_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(polly_speech_generate_messages_py std_msgs_generate_messages_py)
endif()
