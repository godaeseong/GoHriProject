# Install script for directory: /home/hri/catkin_ws/src/mhri_workspace/mhri/mhri_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/hri/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/hri/catkin_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/hri/catkin_ws/install" TYPE PROGRAM FILES "/home/hri/catkin_ws/build/mhri_msgs/catkin_generated/installspace/_setup_util.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/hri/catkin_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/hri/catkin_ws/install" TYPE PROGRAM FILES "/home/hri/catkin_ws/build/mhri_msgs/catkin_generated/installspace/env.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/hri/catkin_ws/install/setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/hri/catkin_ws/install" TYPE FILE FILES "/home/hri/catkin_ws/build/mhri_msgs/catkin_generated/installspace/setup.bash")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/hri/catkin_ws/install/setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/hri/catkin_ws/install" TYPE FILE FILES "/home/hri/catkin_ws/build/mhri_msgs/catkin_generated/installspace/setup.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/hri/catkin_ws/install/setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/hri/catkin_ws/install" TYPE FILE FILES "/home/hri/catkin_ws/build/mhri_msgs/catkin_generated/installspace/setup.zsh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/hri/catkin_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/hri/catkin_ws/install" TYPE FILE FILES "/home/hri/catkin_ws/build/mhri_msgs/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mhri_msgs/msg" TYPE FILE FILES
    "/home/hri/catkin_ws/src/mhri_workspace/mhri/mhri_msgs/msg/ForwardingEvent.msg"
    "/home/hri/catkin_ws/src/mhri_workspace/mhri/mhri_msgs/msg/RaisingEvents.msg"
    "/home/hri/catkin_ws/src/mhri_workspace/mhri/mhri_msgs/msg/Reply.msg"
    "/home/hri/catkin_ws/src/mhri_workspace/mhri/mhri_msgs/msg/ScriptStatus.msg"
    "/home/hri/catkin_ws/src/mhri_workspace/mhri/mhri_msgs/msg/LogItem.msg"
    "/home/hri/catkin_ws/src/mhri_workspace/mhri/mhri_msgs/msg/GazeCommand.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mhri_msgs/srv" TYPE FILE FILES
    "/home/hri/catkin_ws/src/mhri_workspace/mhri/mhri_msgs/srv/GetInstalledGestures.srv"
    "/home/hri/catkin_ws/src/mhri_workspace/mhri/mhri_msgs/srv/ReloadWithResult.srv"
    "/home/hri/catkin_ws/src/mhri_workspace/mhri/mhri_msgs/srv/ReadData.srv"
    "/home/hri/catkin_ws/src/mhri_workspace/mhri/mhri_msgs/srv/WriteData.srv"
    "/home/hri/catkin_ws/src/mhri_workspace/mhri/mhri_msgs/srv/RegisterData.srv"
    "/home/hri/catkin_ws/src/mhri_workspace/mhri/mhri_msgs/srv/GetDataList.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mhri_msgs/action" TYPE FILE FILES
    "/home/hri/catkin_ws/src/mhri_workspace/mhri/mhri_msgs/action/WaitEvent.action"
    "/home/hri/catkin_ws/src/mhri_workspace/mhri/mhri_msgs/action/RenderScene.action"
    "/home/hri/catkin_ws/src/mhri_workspace/mhri/mhri_msgs/action/RenderItem.action"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mhri_msgs/msg" TYPE FILE FILES
    "/home/hri/catkin_ws/devel/.private/mhri_msgs/share/mhri_msgs/msg/WaitEventAction.msg"
    "/home/hri/catkin_ws/devel/.private/mhri_msgs/share/mhri_msgs/msg/WaitEventActionGoal.msg"
    "/home/hri/catkin_ws/devel/.private/mhri_msgs/share/mhri_msgs/msg/WaitEventActionResult.msg"
    "/home/hri/catkin_ws/devel/.private/mhri_msgs/share/mhri_msgs/msg/WaitEventActionFeedback.msg"
    "/home/hri/catkin_ws/devel/.private/mhri_msgs/share/mhri_msgs/msg/WaitEventGoal.msg"
    "/home/hri/catkin_ws/devel/.private/mhri_msgs/share/mhri_msgs/msg/WaitEventResult.msg"
    "/home/hri/catkin_ws/devel/.private/mhri_msgs/share/mhri_msgs/msg/WaitEventFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mhri_msgs/msg" TYPE FILE FILES
    "/home/hri/catkin_ws/devel/.private/mhri_msgs/share/mhri_msgs/msg/RenderSceneAction.msg"
    "/home/hri/catkin_ws/devel/.private/mhri_msgs/share/mhri_msgs/msg/RenderSceneActionGoal.msg"
    "/home/hri/catkin_ws/devel/.private/mhri_msgs/share/mhri_msgs/msg/RenderSceneActionResult.msg"
    "/home/hri/catkin_ws/devel/.private/mhri_msgs/share/mhri_msgs/msg/RenderSceneActionFeedback.msg"
    "/home/hri/catkin_ws/devel/.private/mhri_msgs/share/mhri_msgs/msg/RenderSceneGoal.msg"
    "/home/hri/catkin_ws/devel/.private/mhri_msgs/share/mhri_msgs/msg/RenderSceneResult.msg"
    "/home/hri/catkin_ws/devel/.private/mhri_msgs/share/mhri_msgs/msg/RenderSceneFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mhri_msgs/msg" TYPE FILE FILES
    "/home/hri/catkin_ws/devel/.private/mhri_msgs/share/mhri_msgs/msg/RenderItemAction.msg"
    "/home/hri/catkin_ws/devel/.private/mhri_msgs/share/mhri_msgs/msg/RenderItemActionGoal.msg"
    "/home/hri/catkin_ws/devel/.private/mhri_msgs/share/mhri_msgs/msg/RenderItemActionResult.msg"
    "/home/hri/catkin_ws/devel/.private/mhri_msgs/share/mhri_msgs/msg/RenderItemActionFeedback.msg"
    "/home/hri/catkin_ws/devel/.private/mhri_msgs/share/mhri_msgs/msg/RenderItemGoal.msg"
    "/home/hri/catkin_ws/devel/.private/mhri_msgs/share/mhri_msgs/msg/RenderItemResult.msg"
    "/home/hri/catkin_ws/devel/.private/mhri_msgs/share/mhri_msgs/msg/RenderItemFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mhri_msgs/cmake" TYPE FILE FILES "/home/hri/catkin_ws/build/mhri_msgs/catkin_generated/installspace/mhri_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/hri/catkin_ws/devel/.private/mhri_msgs/include/mhri_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/hri/catkin_ws/devel/.private/mhri_msgs/share/roseus/ros/mhri_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/hri/catkin_ws/devel/.private/mhri_msgs/share/common-lisp/ros/mhri_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/hri/catkin_ws/devel/.private/mhri_msgs/share/gennodejs/ros/mhri_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/hri/catkin_ws/devel/.private/mhri_msgs/lib/python2.7/dist-packages/mhri_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/hri/catkin_ws/devel/.private/mhri_msgs/lib/python2.7/dist-packages/mhri_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/hri/catkin_ws/build/mhri_msgs/catkin_generated/installspace/mhri_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mhri_msgs/cmake" TYPE FILE FILES "/home/hri/catkin_ws/build/mhri_msgs/catkin_generated/installspace/mhri_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mhri_msgs/cmake" TYPE FILE FILES
    "/home/hri/catkin_ws/build/mhri_msgs/catkin_generated/installspace/mhri_msgsConfig.cmake"
    "/home/hri/catkin_ws/build/mhri_msgs/catkin_generated/installspace/mhri_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mhri_msgs" TYPE FILE FILES "/home/hri/catkin_ws/src/mhri_workspace/mhri/mhri_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/hri/catkin_ws/build/mhri_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/hri/catkin_ws/build/mhri_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
