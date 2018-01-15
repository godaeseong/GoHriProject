# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(detection_CONFIG_INCLUDED)
  return()
endif()
set(detection_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("TRUE" STREQUAL "TRUE")
  set(detection_SOURCE_PREFIX /home/hri/catkin_ws/src/openptrack/detection)
  set(detection_DEVEL_PREFIX /home/hri/catkin_ws/devel/.private/detection)
  set(detection_INSTALL_PREFIX "")
  set(detection_PREFIX ${detection_DEVEL_PREFIX})
else()
  set(detection_SOURCE_PREFIX "")
  set(detection_DEVEL_PREFIX "")
  set(detection_INSTALL_PREFIX /home/hri/catkin_ws/install)
  set(detection_PREFIX ${detection_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'detection' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(detection_FOUND_CATKIN_PROJECT TRUE)

if(NOT "/home/hri/catkin_ws/devel/.private/detection/include;/home/hri/catkin_ws/src/openptrack/detection/include;/opt/ros/kinetic/include/opencv-3.3.1;/opt/ros/kinetic/include/opencv-3.3.1/opencv " STREQUAL " ")
  set(detection_INCLUDE_DIRS "")
  set(_include_dirs "/home/hri/catkin_ws/devel/.private/detection/include;/home/hri/catkin_ws/src/openptrack/detection/include;/opt/ros/kinetic/include/opencv-3.3.1;/opt/ros/kinetic/include/opencv-3.3.1/opencv")
  if(NOT " " STREQUAL " ")
    set(_report "Check the issue tracker '' and consider creating a ticket if the problem has not been reported yet.")
  elseif(NOT " " STREQUAL " ")
    set(_report "Check the website '' for information and consider reporting the problem.")
  else()
    set(_report "Report the problem to the maintainer 'Andres Ramirez <aaramirezd@gmail.com>' and request to fix the problem.")
  endif()
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${detection_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'detection' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  ${_report}")
      endif()
    else()
      message(FATAL_ERROR "Project 'detection' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '/home/hri/catkin_ws/src/openptrack/detection/${idir}'.  ${_report}")
    endif()
    _list_append_unique(detection_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "detection;opt_utils;/opt/ros/kinetic/lib/libopencv_calib3d3.so;/opt/ros/kinetic/lib/libopencv_core3.so;/opt/ros/kinetic/lib/libopencv_dnn3.so;/opt/ros/kinetic/lib/libopencv_features2d3.so;/opt/ros/kinetic/lib/libopencv_flann3.so;/opt/ros/kinetic/lib/libopencv_highgui3.so;/opt/ros/kinetic/lib/libopencv_imgcodecs3.so;/opt/ros/kinetic/lib/libopencv_imgproc3.so;/opt/ros/kinetic/lib/libopencv_ml3.so;/opt/ros/kinetic/lib/libopencv_objdetect3.so;/opt/ros/kinetic/lib/libopencv_photo3.so;/opt/ros/kinetic/lib/libopencv_shape3.so;/opt/ros/kinetic/lib/libopencv_stitching3.so;/opt/ros/kinetic/lib/libopencv_superres3.so;/opt/ros/kinetic/lib/libopencv_video3.so;/opt/ros/kinetic/lib/libopencv_videoio3.so;/opt/ros/kinetic/lib/libopencv_videostab3.so;/opt/ros/kinetic/lib/libopencv_viz3.so;/opt/ros/kinetic/lib/libopencv_aruco3.so;/opt/ros/kinetic/lib/libopencv_bgsegm3.so;/opt/ros/kinetic/lib/libopencv_bioinspired3.so;/opt/ros/kinetic/lib/libopencv_ccalib3.so;/opt/ros/kinetic/lib/libopencv_cvv3.so;/opt/ros/kinetic/lib/libopencv_datasets3.so;/opt/ros/kinetic/lib/libopencv_dpm3.so;/opt/ros/kinetic/lib/libopencv_face3.so;/opt/ros/kinetic/lib/libopencv_fuzzy3.so;/opt/ros/kinetic/lib/libopencv_hdf3.so;/opt/ros/kinetic/lib/libopencv_img_hash3.so;/opt/ros/kinetic/lib/libopencv_line_descriptor3.so;/opt/ros/kinetic/lib/libopencv_optflow3.so;/opt/ros/kinetic/lib/libopencv_phase_unwrapping3.so;/opt/ros/kinetic/lib/libopencv_plot3.so;/opt/ros/kinetic/lib/libopencv_reg3.so;/opt/ros/kinetic/lib/libopencv_rgbd3.so;/opt/ros/kinetic/lib/libopencv_saliency3.so;/opt/ros/kinetic/lib/libopencv_stereo3.so;/opt/ros/kinetic/lib/libopencv_structured_light3.so;/opt/ros/kinetic/lib/libopencv_surface_matching3.so;/opt/ros/kinetic/lib/libopencv_text3.so;/opt/ros/kinetic/lib/libopencv_tracking3.so;/opt/ros/kinetic/lib/libopencv_xfeatures2d3.so;/opt/ros/kinetic/lib/libopencv_ximgproc3.so;/opt/ros/kinetic/lib/libopencv_xobjdetect3.so;/opt/ros/kinetic/lib/libopencv_xphoto3.so")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND detection_LIBRARIES ${library})
  elseif(TARGET ${library})
    list(APPEND detection_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND detection_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/hri/catkin_ws/devel/.private/detection/lib;/home/hri/catkin_ws/devel/lib;/opt/ros/kinetic/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(detection_LIBRARY_DIRS ${lib_path})
      list(APPEND detection_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'detection'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND detection_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(detection_EXPORTED_TARGETS "detection_gencfg")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${detection_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "roscpp;pcl_ros;pcl_conversions;opt_utils;opt_msgs")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 detection_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${detection_dep}_FOUND)
      find_package(${detection_dep} REQUIRED NO_MODULE)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${detection_dep} REQUIRED NO_MODULE ${depend_list})
  endif()
  _list_append_unique(detection_INCLUDE_DIRS ${${detection_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(detection_LIBRARIES ${detection_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${detection_dep}_LIBRARIES})
  _list_append_deduplicate(detection_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(detection_LIBRARIES ${detection_LIBRARIES})

  _list_append_unique(detection_LIBRARY_DIRS ${${detection_dep}_LIBRARY_DIRS})
  list(APPEND detection_EXPORTED_TARGETS ${${detection_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${detection_DIR}/${extra})
  endif()
  include(${extra})
endforeach()
