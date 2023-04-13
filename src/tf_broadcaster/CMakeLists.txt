cmake_minimum_required(VERSION 2.8.3)
project(tf_broadcaster)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  tf
)

include_directories(include ${catkin_INCLUDE_DIRS})

catkin_package(
  CATKIN_DEPENDS 
)

add_executable(tf_broadcaster src/tf_broadcaster.cpp)
target_link_libraries(tf_broadcaster ${catkin_LIBRARIES})
add_dependencies(tf_broadcaster tf_broadcaster_gencpp)

