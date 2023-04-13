# Install script for directory: /home/c01/naya_navigation/src/navigation-kinetic-devel/move_base_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/c01/naya_navigation/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/move_base_msgs/msg" TYPE FILE FILES "/home/c01/naya_navigation/src/navigation-kinetic-devel/move_base_msgs/msg/RecoveryStatus.msg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/move_base_msgs/action" TYPE FILE FILES "/home/c01/naya_navigation/src/navigation-kinetic-devel/move_base_msgs/action/MoveBase.action")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/move_base_msgs/msg" TYPE FILE FILES
    "/home/c01/naya_navigation/devel/share/move_base_msgs/msg/MoveBaseAction.msg"
    "/home/c01/naya_navigation/devel/share/move_base_msgs/msg/MoveBaseActionGoal.msg"
    "/home/c01/naya_navigation/devel/share/move_base_msgs/msg/MoveBaseActionResult.msg"
    "/home/c01/naya_navigation/devel/share/move_base_msgs/msg/MoveBaseActionFeedback.msg"
    "/home/c01/naya_navigation/devel/share/move_base_msgs/msg/MoveBaseGoal.msg"
    "/home/c01/naya_navigation/devel/share/move_base_msgs/msg/MoveBaseResult.msg"
    "/home/c01/naya_navigation/devel/share/move_base_msgs/msg/MoveBaseFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/move_base_msgs/cmake" TYPE FILE FILES "/home/c01/naya_navigation/build/navigation-kinetic-devel/move_base_msgs/catkin_generated/installspace/move_base_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/c01/naya_navigation/devel/include/move_base_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/c01/naya_navigation/devel/share/roseus/ros/move_base_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/c01/naya_navigation/devel/share/common-lisp/ros/move_base_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/c01/naya_navigation/devel/share/gennodejs/ros/move_base_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/c01/naya_navigation/devel/lib/python2.7/dist-packages/move_base_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/c01/naya_navigation/devel/lib/python2.7/dist-packages/move_base_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/c01/naya_navigation/build/navigation-kinetic-devel/move_base_msgs/catkin_generated/installspace/move_base_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/move_base_msgs/cmake" TYPE FILE FILES "/home/c01/naya_navigation/build/navigation-kinetic-devel/move_base_msgs/catkin_generated/installspace/move_base_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/move_base_msgs/cmake" TYPE FILE FILES
    "/home/c01/naya_navigation/build/navigation-kinetic-devel/move_base_msgs/catkin_generated/installspace/move_base_msgsConfig.cmake"
    "/home/c01/naya_navigation/build/navigation-kinetic-devel/move_base_msgs/catkin_generated/installspace/move_base_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/move_base_msgs" TYPE FILE FILES "/home/c01/naya_navigation/src/navigation-kinetic-devel/move_base_msgs/package.xml")
endif()

