# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "BaseNode: 16 messages, 3 services")

set(MSG_I_FLAGS "-IBaseNode:/home/c01/naya_navigation/src/BaseNode/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(BaseNode_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/RealSpeedData.msg" NAME_WE)
add_custom_target(_BaseNode_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "BaseNode" "/home/c01/naya_navigation/src/BaseNode/msg/RealSpeedData.msg" ""
)

get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/SonicReport.msg" NAME_WE)
add_custom_target(_BaseNode_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "BaseNode" "/home/c01/naya_navigation/src/BaseNode/msg/SonicReport.msg" ""
)

get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/MagnetReport.msg" NAME_WE)
add_custom_target(_BaseNode_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "BaseNode" "/home/c01/naya_navigation/src/BaseNode/msg/MagnetReport.msg" ""
)

get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/RFIDReport.msg" NAME_WE)
add_custom_target(_BaseNode_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "BaseNode" "/home/c01/naya_navigation/src/BaseNode/msg/RFIDReport.msg" ""
)

get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/AutoDockStatus.msg" NAME_WE)
add_custom_target(_BaseNode_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "BaseNode" "/home/c01/naya_navigation/src/BaseNode/msg/AutoDockStatus.msg" ""
)

get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/PingData.msg" NAME_WE)
add_custom_target(_BaseNode_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "BaseNode" "/home/c01/naya_navigation/src/BaseNode/msg/PingData.msg" ""
)

get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/PingDataStamped.msg" NAME_WE)
add_custom_target(_BaseNode_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "BaseNode" "/home/c01/naya_navigation/src/BaseNode/msg/PingDataStamped.msg" "BaseNode/PingData:std_msgs/Header"
)

get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/CurrentController.msg" NAME_WE)
add_custom_target(_BaseNode_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "BaseNode" "/home/c01/naya_navigation/src/BaseNode/msg/CurrentController.msg" ""
)

get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/srv/SetObstacleDistance.srv" NAME_WE)
add_custom_target(_BaseNode_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "BaseNode" "/home/c01/naya_navigation/src/BaseNode/srv/SetObstacleDistance.srv" ""
)

get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/IMUReport.msg" NAME_WE)
add_custom_target(_BaseNode_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "BaseNode" "/home/c01/naya_navigation/src/BaseNode/msg/IMUReport.msg" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/srv/GetObstacleDistance.srv" NAME_WE)
add_custom_target(_BaseNode_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "BaseNode" "/home/c01/naya_navigation/src/BaseNode/srv/GetObstacleDistance.srv" ""
)

get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/DigitLEDControl.msg" NAME_WE)
add_custom_target(_BaseNode_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "BaseNode" "/home/c01/naya_navigation/src/BaseNode/msg/DigitLEDControl.msg" ""
)

get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/PIC32EmergencySetting.msg" NAME_WE)
add_custom_target(_BaseNode_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "BaseNode" "/home/c01/naya_navigation/src/BaseNode/msg/PIC32EmergencySetting.msg" ""
)

get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/FlagReport.msg" NAME_WE)
add_custom_target(_BaseNode_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "BaseNode" "/home/c01/naya_navigation/src/BaseNode/msg/FlagReport.msg" ""
)

get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/IrDockReport.msg" NAME_WE)
add_custom_target(_BaseNode_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "BaseNode" "/home/c01/naya_navigation/src/BaseNode/msg/IrDockReport.msg" ""
)

get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/srv/LEDReport.srv" NAME_WE)
add_custom_target(_BaseNode_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "BaseNode" "/home/c01/naya_navigation/src/BaseNode/srv/LEDReport.srv" ""
)

get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/RGBLEDControl.msg" NAME_WE)
add_custom_target(_BaseNode_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "BaseNode" "/home/c01/naya_navigation/src/BaseNode/msg/RGBLEDControl.msg" ""
)

get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/FlagReportStamped.msg" NAME_WE)
add_custom_target(_BaseNode_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "BaseNode" "/home/c01/naya_navigation/src/BaseNode/msg/FlagReportStamped.msg" "BaseNode/FlagReport:std_msgs/Header"
)

get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/RGBLEDControlStamped.msg" NAME_WE)
add_custom_target(_BaseNode_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "BaseNode" "/home/c01/naya_navigation/src/BaseNode/msg/RGBLEDControlStamped.msg" "std_msgs/Header:BaseNode/RGBLEDControl"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/RealSpeedData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/BaseNode
)
_generate_msg_cpp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/SonicReport.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/BaseNode
)
_generate_msg_cpp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/DigitLEDControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/BaseNode
)
_generate_msg_cpp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/RFIDReport.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/BaseNode
)
_generate_msg_cpp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/AutoDockStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/BaseNode
)
_generate_msg_cpp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/PingDataStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/c01/naya_navigation/src/BaseNode/msg/PingData.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/BaseNode
)
_generate_msg_cpp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/CurrentController.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/BaseNode
)
_generate_msg_cpp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/IMUReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/BaseNode
)
_generate_msg_cpp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/PingData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/BaseNode
)
_generate_msg_cpp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/PIC32EmergencySetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/BaseNode
)
_generate_msg_cpp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/FlagReport.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/BaseNode
)
_generate_msg_cpp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/IrDockReport.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/BaseNode
)
_generate_msg_cpp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/MagnetReport.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/BaseNode
)
_generate_msg_cpp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/RGBLEDControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/BaseNode
)
_generate_msg_cpp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/FlagReportStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/c01/naya_navigation/src/BaseNode/msg/FlagReport.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/BaseNode
)
_generate_msg_cpp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/RGBLEDControlStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/c01/naya_navigation/src/BaseNode/msg/RGBLEDControl.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/BaseNode
)

### Generating Services
_generate_srv_cpp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/srv/GetObstacleDistance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/BaseNode
)
_generate_srv_cpp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/srv/LEDReport.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/BaseNode
)
_generate_srv_cpp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/srv/SetObstacleDistance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/BaseNode
)

### Generating Module File
_generate_module_cpp(BaseNode
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/BaseNode
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(BaseNode_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(BaseNode_generate_messages BaseNode_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/RealSpeedData.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_cpp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/SonicReport.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_cpp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/MagnetReport.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_cpp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/RFIDReport.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_cpp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/AutoDockStatus.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_cpp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/PingData.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_cpp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/PingDataStamped.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_cpp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/CurrentController.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_cpp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/srv/SetObstacleDistance.srv" NAME_WE)
add_dependencies(BaseNode_generate_messages_cpp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/IMUReport.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_cpp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/srv/GetObstacleDistance.srv" NAME_WE)
add_dependencies(BaseNode_generate_messages_cpp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/DigitLEDControl.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_cpp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/PIC32EmergencySetting.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_cpp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/FlagReport.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_cpp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/IrDockReport.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_cpp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/srv/LEDReport.srv" NAME_WE)
add_dependencies(BaseNode_generate_messages_cpp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/RGBLEDControl.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_cpp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/FlagReportStamped.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_cpp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/RGBLEDControlStamped.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_cpp _BaseNode_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(BaseNode_gencpp)
add_dependencies(BaseNode_gencpp BaseNode_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS BaseNode_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/RealSpeedData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/BaseNode
)
_generate_msg_eus(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/SonicReport.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/BaseNode
)
_generate_msg_eus(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/DigitLEDControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/BaseNode
)
_generate_msg_eus(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/RFIDReport.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/BaseNode
)
_generate_msg_eus(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/AutoDockStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/BaseNode
)
_generate_msg_eus(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/PingDataStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/c01/naya_navigation/src/BaseNode/msg/PingData.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/BaseNode
)
_generate_msg_eus(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/CurrentController.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/BaseNode
)
_generate_msg_eus(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/IMUReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/BaseNode
)
_generate_msg_eus(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/PingData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/BaseNode
)
_generate_msg_eus(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/PIC32EmergencySetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/BaseNode
)
_generate_msg_eus(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/FlagReport.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/BaseNode
)
_generate_msg_eus(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/IrDockReport.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/BaseNode
)
_generate_msg_eus(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/MagnetReport.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/BaseNode
)
_generate_msg_eus(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/RGBLEDControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/BaseNode
)
_generate_msg_eus(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/FlagReportStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/c01/naya_navigation/src/BaseNode/msg/FlagReport.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/BaseNode
)
_generate_msg_eus(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/RGBLEDControlStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/c01/naya_navigation/src/BaseNode/msg/RGBLEDControl.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/BaseNode
)

### Generating Services
_generate_srv_eus(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/srv/GetObstacleDistance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/BaseNode
)
_generate_srv_eus(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/srv/LEDReport.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/BaseNode
)
_generate_srv_eus(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/srv/SetObstacleDistance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/BaseNode
)

### Generating Module File
_generate_module_eus(BaseNode
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/BaseNode
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(BaseNode_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(BaseNode_generate_messages BaseNode_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/RealSpeedData.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_eus _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/SonicReport.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_eus _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/MagnetReport.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_eus _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/RFIDReport.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_eus _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/AutoDockStatus.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_eus _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/PingData.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_eus _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/PingDataStamped.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_eus _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/CurrentController.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_eus _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/srv/SetObstacleDistance.srv" NAME_WE)
add_dependencies(BaseNode_generate_messages_eus _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/IMUReport.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_eus _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/srv/GetObstacleDistance.srv" NAME_WE)
add_dependencies(BaseNode_generate_messages_eus _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/DigitLEDControl.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_eus _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/PIC32EmergencySetting.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_eus _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/FlagReport.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_eus _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/IrDockReport.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_eus _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/srv/LEDReport.srv" NAME_WE)
add_dependencies(BaseNode_generate_messages_eus _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/RGBLEDControl.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_eus _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/FlagReportStamped.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_eus _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/RGBLEDControlStamped.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_eus _BaseNode_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(BaseNode_geneus)
add_dependencies(BaseNode_geneus BaseNode_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS BaseNode_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/RealSpeedData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/BaseNode
)
_generate_msg_lisp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/SonicReport.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/BaseNode
)
_generate_msg_lisp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/DigitLEDControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/BaseNode
)
_generate_msg_lisp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/RFIDReport.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/BaseNode
)
_generate_msg_lisp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/AutoDockStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/BaseNode
)
_generate_msg_lisp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/PingDataStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/c01/naya_navigation/src/BaseNode/msg/PingData.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/BaseNode
)
_generate_msg_lisp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/CurrentController.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/BaseNode
)
_generate_msg_lisp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/IMUReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/BaseNode
)
_generate_msg_lisp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/PingData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/BaseNode
)
_generate_msg_lisp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/PIC32EmergencySetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/BaseNode
)
_generate_msg_lisp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/FlagReport.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/BaseNode
)
_generate_msg_lisp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/IrDockReport.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/BaseNode
)
_generate_msg_lisp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/MagnetReport.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/BaseNode
)
_generate_msg_lisp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/RGBLEDControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/BaseNode
)
_generate_msg_lisp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/FlagReportStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/c01/naya_navigation/src/BaseNode/msg/FlagReport.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/BaseNode
)
_generate_msg_lisp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/RGBLEDControlStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/c01/naya_navigation/src/BaseNode/msg/RGBLEDControl.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/BaseNode
)

### Generating Services
_generate_srv_lisp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/srv/GetObstacleDistance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/BaseNode
)
_generate_srv_lisp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/srv/LEDReport.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/BaseNode
)
_generate_srv_lisp(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/srv/SetObstacleDistance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/BaseNode
)

### Generating Module File
_generate_module_lisp(BaseNode
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/BaseNode
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(BaseNode_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(BaseNode_generate_messages BaseNode_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/RealSpeedData.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_lisp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/SonicReport.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_lisp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/MagnetReport.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_lisp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/RFIDReport.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_lisp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/AutoDockStatus.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_lisp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/PingData.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_lisp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/PingDataStamped.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_lisp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/CurrentController.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_lisp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/srv/SetObstacleDistance.srv" NAME_WE)
add_dependencies(BaseNode_generate_messages_lisp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/IMUReport.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_lisp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/srv/GetObstacleDistance.srv" NAME_WE)
add_dependencies(BaseNode_generate_messages_lisp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/DigitLEDControl.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_lisp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/PIC32EmergencySetting.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_lisp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/FlagReport.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_lisp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/IrDockReport.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_lisp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/srv/LEDReport.srv" NAME_WE)
add_dependencies(BaseNode_generate_messages_lisp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/RGBLEDControl.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_lisp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/FlagReportStamped.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_lisp _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/RGBLEDControlStamped.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_lisp _BaseNode_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(BaseNode_genlisp)
add_dependencies(BaseNode_genlisp BaseNode_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS BaseNode_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/RealSpeedData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/BaseNode
)
_generate_msg_nodejs(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/SonicReport.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/BaseNode
)
_generate_msg_nodejs(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/DigitLEDControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/BaseNode
)
_generate_msg_nodejs(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/RFIDReport.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/BaseNode
)
_generate_msg_nodejs(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/AutoDockStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/BaseNode
)
_generate_msg_nodejs(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/PingDataStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/c01/naya_navigation/src/BaseNode/msg/PingData.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/BaseNode
)
_generate_msg_nodejs(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/CurrentController.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/BaseNode
)
_generate_msg_nodejs(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/IMUReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/BaseNode
)
_generate_msg_nodejs(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/PingData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/BaseNode
)
_generate_msg_nodejs(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/PIC32EmergencySetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/BaseNode
)
_generate_msg_nodejs(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/FlagReport.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/BaseNode
)
_generate_msg_nodejs(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/IrDockReport.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/BaseNode
)
_generate_msg_nodejs(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/MagnetReport.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/BaseNode
)
_generate_msg_nodejs(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/RGBLEDControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/BaseNode
)
_generate_msg_nodejs(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/FlagReportStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/c01/naya_navigation/src/BaseNode/msg/FlagReport.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/BaseNode
)
_generate_msg_nodejs(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/RGBLEDControlStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/c01/naya_navigation/src/BaseNode/msg/RGBLEDControl.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/BaseNode
)

### Generating Services
_generate_srv_nodejs(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/srv/GetObstacleDistance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/BaseNode
)
_generate_srv_nodejs(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/srv/LEDReport.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/BaseNode
)
_generate_srv_nodejs(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/srv/SetObstacleDistance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/BaseNode
)

### Generating Module File
_generate_module_nodejs(BaseNode
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/BaseNode
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(BaseNode_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(BaseNode_generate_messages BaseNode_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/RealSpeedData.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_nodejs _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/SonicReport.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_nodejs _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/MagnetReport.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_nodejs _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/RFIDReport.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_nodejs _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/AutoDockStatus.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_nodejs _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/PingData.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_nodejs _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/PingDataStamped.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_nodejs _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/CurrentController.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_nodejs _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/srv/SetObstacleDistance.srv" NAME_WE)
add_dependencies(BaseNode_generate_messages_nodejs _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/IMUReport.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_nodejs _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/srv/GetObstacleDistance.srv" NAME_WE)
add_dependencies(BaseNode_generate_messages_nodejs _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/DigitLEDControl.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_nodejs _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/PIC32EmergencySetting.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_nodejs _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/FlagReport.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_nodejs _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/IrDockReport.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_nodejs _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/srv/LEDReport.srv" NAME_WE)
add_dependencies(BaseNode_generate_messages_nodejs _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/RGBLEDControl.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_nodejs _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/FlagReportStamped.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_nodejs _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/RGBLEDControlStamped.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_nodejs _BaseNode_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(BaseNode_gennodejs)
add_dependencies(BaseNode_gennodejs BaseNode_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS BaseNode_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/RealSpeedData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/BaseNode
)
_generate_msg_py(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/SonicReport.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/BaseNode
)
_generate_msg_py(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/DigitLEDControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/BaseNode
)
_generate_msg_py(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/RFIDReport.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/BaseNode
)
_generate_msg_py(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/AutoDockStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/BaseNode
)
_generate_msg_py(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/PingDataStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/c01/naya_navigation/src/BaseNode/msg/PingData.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/BaseNode
)
_generate_msg_py(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/CurrentController.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/BaseNode
)
_generate_msg_py(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/IMUReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/BaseNode
)
_generate_msg_py(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/PingData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/BaseNode
)
_generate_msg_py(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/PIC32EmergencySetting.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/BaseNode
)
_generate_msg_py(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/FlagReport.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/BaseNode
)
_generate_msg_py(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/IrDockReport.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/BaseNode
)
_generate_msg_py(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/MagnetReport.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/BaseNode
)
_generate_msg_py(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/RGBLEDControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/BaseNode
)
_generate_msg_py(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/FlagReportStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/c01/naya_navigation/src/BaseNode/msg/FlagReport.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/BaseNode
)
_generate_msg_py(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/msg/RGBLEDControlStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/c01/naya_navigation/src/BaseNode/msg/RGBLEDControl.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/BaseNode
)

### Generating Services
_generate_srv_py(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/srv/GetObstacleDistance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/BaseNode
)
_generate_srv_py(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/srv/LEDReport.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/BaseNode
)
_generate_srv_py(BaseNode
  "/home/c01/naya_navigation/src/BaseNode/srv/SetObstacleDistance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/BaseNode
)

### Generating Module File
_generate_module_py(BaseNode
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/BaseNode
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(BaseNode_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(BaseNode_generate_messages BaseNode_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/RealSpeedData.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_py _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/SonicReport.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_py _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/MagnetReport.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_py _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/RFIDReport.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_py _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/AutoDockStatus.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_py _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/PingData.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_py _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/PingDataStamped.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_py _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/CurrentController.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_py _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/srv/SetObstacleDistance.srv" NAME_WE)
add_dependencies(BaseNode_generate_messages_py _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/IMUReport.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_py _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/srv/GetObstacleDistance.srv" NAME_WE)
add_dependencies(BaseNode_generate_messages_py _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/DigitLEDControl.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_py _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/PIC32EmergencySetting.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_py _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/FlagReport.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_py _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/IrDockReport.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_py _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/srv/LEDReport.srv" NAME_WE)
add_dependencies(BaseNode_generate_messages_py _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/RGBLEDControl.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_py _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/FlagReportStamped.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_py _BaseNode_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/BaseNode/msg/RGBLEDControlStamped.msg" NAME_WE)
add_dependencies(BaseNode_generate_messages_py _BaseNode_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(BaseNode_genpy)
add_dependencies(BaseNode_genpy BaseNode_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS BaseNode_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/BaseNode)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/BaseNode
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(BaseNode_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(BaseNode_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/BaseNode)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/BaseNode
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(BaseNode_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(BaseNode_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/BaseNode)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/BaseNode
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(BaseNode_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(BaseNode_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/BaseNode)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/BaseNode
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(BaseNode_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(BaseNode_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/BaseNode)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/BaseNode\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/BaseNode
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(BaseNode_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(BaseNode_generate_messages_py geometry_msgs_generate_messages_py)
endif()
