cmake_minimum_required(VERSION 2.8.3)
project(laser)

include(CheckCXXCompilerFlag)
CHECK_CXX_COMPILER_FLAG("-std=c++11" COMPILER_SUPPORTS_CXX11)
CHECK_CXX_COMPILER_FLAG("-std=c++0x" COMPILER_SUPPORTS_CXX0X)
if(COMPILER_SUPPORTS_CXX11)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
elseif(COMPILER_SUPPORTS_CXX0X)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x")
else()
        message(STATUS "The compiler ${CMAKE_CXX_COMPILER} has no C++11 support. Please use a different C++ compiler.")
endif()

find_package(catkin REQUIRED COMPONENTS 
   roscpp
   serial
   sensor_msgs
   message_generation
   sensor_msgs
   tf
)

generate_messages(
   DEPENDENCIES
   std_msgs  
   sensor_msgs      # Or other packages containing msgs
)

#catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES laser
#  CATKIN_DEPENDS message_runtime
#  DEPENDS system_lib
#)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
# include_directories(include)
include_directories(include
  ${catkin_INCLUDE_DIRS}
)

add_executable(scan_detection src/scan_detection.cpp)
target_link_libraries(scan_detection ${catkin_LIBRARIES}) 
add_dependencies(scan_detection ${catkin_EXPORTED_TARGETS})

add_executable(scan_filter src/scan_filter.cpp)
target_link_libraries(scan_filter ${catkin_LIBRARIES})
add_dependencies(scan_filter scan_filter_spch_cpp)

#add_executable(reflector_tf_node src/reflector_tf_node.cpp src/reflector_tf.cpp)
#target_link_libraries(reflector_tf_node ${catkin_LIBRARIES}) 
#add_dependencies(reflector_tf_node ${catkin_EXPORTED_TARGETS})
