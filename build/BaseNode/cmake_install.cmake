# Install script for directory: /home/c01/naya_navigation/src/BaseNode

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/BaseNode/msg" TYPE FILE FILES
    "/home/c01/naya_navigation/src/BaseNode/msg/RealSpeedData.msg"
    "/home/c01/naya_navigation/src/BaseNode/msg/AutoDockStatus.msg"
    "/home/c01/naya_navigation/src/BaseNode/msg/CurrentController.msg"
    "/home/c01/naya_navigation/src/BaseNode/msg/FlagReport.msg"
    "/home/c01/naya_navigation/src/BaseNode/msg/FlagReportStamped.msg"
    "/home/c01/naya_navigation/src/BaseNode/msg/PIC32EmergencySetting.msg"
    "/home/c01/naya_navigation/src/BaseNode/msg/PingData.msg"
    "/home/c01/naya_navigation/src/BaseNode/msg/PingDataStamped.msg"
    "/home/c01/naya_navigation/src/BaseNode/msg/RGBLEDControl.msg"
    "/home/c01/naya_navigation/src/BaseNode/msg/RGBLEDControlStamped.msg"
    "/home/c01/naya_navigation/src/BaseNode/msg/SonicReport.msg"
    "/home/c01/naya_navigation/src/BaseNode/msg/RFIDReport.msg"
    "/home/c01/naya_navigation/src/BaseNode/msg/MagnetReport.msg"
    "/home/c01/naya_navigation/src/BaseNode/msg/DigitLEDControl.msg"
    "/home/c01/naya_navigation/src/BaseNode/msg/IMUReport.msg"
    "/home/c01/naya_navigation/src/BaseNode/msg/IrDockReport.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/BaseNode/srv" TYPE FILE FILES
    "/home/c01/naya_navigation/src/BaseNode/srv/LEDReport.srv"
    "/home/c01/naya_navigation/src/BaseNode/srv/SetObstacleDistance.srv"
    "/home/c01/naya_navigation/src/BaseNode/srv/GetObstacleDistance.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/BaseNode/cmake" TYPE FILE FILES "/home/c01/naya_navigation/build/BaseNode/catkin_generated/installspace/BaseNode-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/c01/naya_navigation/devel/include/BaseNode")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/c01/naya_navigation/devel/share/roseus/ros/BaseNode")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/c01/naya_navigation/devel/share/common-lisp/ros/BaseNode")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/c01/naya_navigation/devel/share/gennodejs/ros/BaseNode")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/c01/naya_navigation/devel/lib/python2.7/dist-packages/BaseNode")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/c01/naya_navigation/devel/lib/python2.7/dist-packages/BaseNode")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/c01/naya_navigation/build/BaseNode/catkin_generated/installspace/BaseNode.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/BaseNode/cmake" TYPE FILE FILES "/home/c01/naya_navigation/build/BaseNode/catkin_generated/installspace/BaseNode-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/BaseNode/cmake" TYPE FILE FILES
    "/home/c01/naya_navigation/build/BaseNode/catkin_generated/installspace/BaseNodeConfig.cmake"
    "/home/c01/naya_navigation/build/BaseNode/catkin_generated/installspace/BaseNodeConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/BaseNode" TYPE FILE FILES "/home/c01/naya_navigation/src/BaseNode/package.xml")
endif()

