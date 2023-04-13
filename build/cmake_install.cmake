# Install script for directory: /home/c01/naya_navigation/src

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
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/c01/naya_navigation/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/c01/naya_navigation/install" TYPE PROGRAM FILES "/home/c01/naya_navigation/build/catkin_generated/installspace/_setup_util.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/c01/naya_navigation/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/c01/naya_navigation/install" TYPE PROGRAM FILES "/home/c01/naya_navigation/build/catkin_generated/installspace/env.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/c01/naya_navigation/install/setup.bash;/home/c01/naya_navigation/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/c01/naya_navigation/install" TYPE FILE FILES
    "/home/c01/naya_navigation/build/catkin_generated/installspace/setup.bash"
    "/home/c01/naya_navigation/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/c01/naya_navigation/install/setup.sh;/home/c01/naya_navigation/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/c01/naya_navigation/install" TYPE FILE FILES
    "/home/c01/naya_navigation/build/catkin_generated/installspace/setup.sh"
    "/home/c01/naya_navigation/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/c01/naya_navigation/install/setup.zsh;/home/c01/naya_navigation/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/c01/naya_navigation/install" TYPE FILE FILES
    "/home/c01/naya_navigation/build/catkin_generated/installspace/setup.zsh"
    "/home/c01/naya_navigation/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/c01/naya_navigation/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/c01/naya_navigation/install" TYPE FILE FILES "/home/c01/naya_navigation/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/c01/naya_navigation/build/gtest/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/M03_navigation/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/navigation-kinetic-devel/navigation/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/slam_gmapping/slam_gmapping/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/navigation-kinetic-devel/move_base_msgs/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/BaseNode/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/navigation-kinetic-devel/map_server/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/Battery/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/auto_charge_service/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/navigation-kinetic-devel/map_msgs/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/rplidar/rplidar_ros/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/rplidar/sick_tim/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/simple_navigation_goals/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/navigation-kinetic-devel/amcl/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/slam_gmapping/gmapping/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/rplidar/laser_scan_matcher/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/rplidar/laser/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/navigation-kinetic-devel/robot_pose_ekf/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/web/robot_pose_publisher/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/navigation-kinetic-devel/fake_localization/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/tf_broadcaster/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/navigation-kinetic-devel/voxel_grid/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/navigation-kinetic-devel/costmap_2d/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/navigation-kinetic-devel/nav_core/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/navigation-kinetic-devel/base_local_planner/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/navigation-kinetic-devel/carrot_planner/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/navigation-kinetic-devel/clear_costmap_recovery/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/navigation-kinetic-devel/dwa_local_planner/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/navigation-kinetic-devel/move_slow_and_clear/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/navigation-kinetic-devel/navfn/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/navigation-kinetic-devel/global_planner/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/navigation-kinetic-devel/rotate_recovery/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/navigation-kinetic-devel/move_base/cmake_install.cmake")
  include("/home/c01/naya_navigation/build/web/web_video_server/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/c01/naya_navigation/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
