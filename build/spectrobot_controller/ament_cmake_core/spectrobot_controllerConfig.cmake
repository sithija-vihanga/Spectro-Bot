# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_spectrobot_controller_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED spectrobot_controller_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(spectrobot_controller_FOUND FALSE)
  elseif(NOT spectrobot_controller_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(spectrobot_controller_FOUND FALSE)
  endif()
  return()
endif()
set(_spectrobot_controller_CONFIG_INCLUDED TRUE)

# output package information
if(NOT spectrobot_controller_FIND_QUIETLY)
  message(STATUS "Found spectrobot_controller: 0.0.0 (${spectrobot_controller_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'spectrobot_controller' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${spectrobot_controller_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(spectrobot_controller_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${spectrobot_controller_DIR}/${_extra}")
endforeach()
