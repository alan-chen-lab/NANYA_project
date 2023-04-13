# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "auto_charge_service: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iauto_charge_service:/home/c01/naya_navigation/src/auto_charge_service/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(auto_charge_service_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/c01/naya_navigation/src/auto_charge_service/msg/aurco_info.msg" NAME_WE)
add_custom_target(_auto_charge_service_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "auto_charge_service" "/home/c01/naya_navigation/src/auto_charge_service/msg/aurco_info.msg" ""
)

get_filename_component(_filename "/home/c01/naya_navigation/src/auto_charge_service/srv/auto_charge_srv.srv" NAME_WE)
add_custom_target(_auto_charge_service_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "auto_charge_service" "/home/c01/naya_navigation/src/auto_charge_service/srv/auto_charge_srv.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(auto_charge_service
  "/home/c01/naya_navigation/src/auto_charge_service/msg/aurco_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/auto_charge_service
)

### Generating Services
_generate_srv_cpp(auto_charge_service
  "/home/c01/naya_navigation/src/auto_charge_service/srv/auto_charge_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/auto_charge_service
)

### Generating Module File
_generate_module_cpp(auto_charge_service
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/auto_charge_service
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(auto_charge_service_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(auto_charge_service_generate_messages auto_charge_service_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/c01/naya_navigation/src/auto_charge_service/msg/aurco_info.msg" NAME_WE)
add_dependencies(auto_charge_service_generate_messages_cpp _auto_charge_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/auto_charge_service/srv/auto_charge_srv.srv" NAME_WE)
add_dependencies(auto_charge_service_generate_messages_cpp _auto_charge_service_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(auto_charge_service_gencpp)
add_dependencies(auto_charge_service_gencpp auto_charge_service_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS auto_charge_service_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(auto_charge_service
  "/home/c01/naya_navigation/src/auto_charge_service/msg/aurco_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/auto_charge_service
)

### Generating Services
_generate_srv_eus(auto_charge_service
  "/home/c01/naya_navigation/src/auto_charge_service/srv/auto_charge_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/auto_charge_service
)

### Generating Module File
_generate_module_eus(auto_charge_service
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/auto_charge_service
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(auto_charge_service_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(auto_charge_service_generate_messages auto_charge_service_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/c01/naya_navigation/src/auto_charge_service/msg/aurco_info.msg" NAME_WE)
add_dependencies(auto_charge_service_generate_messages_eus _auto_charge_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/auto_charge_service/srv/auto_charge_srv.srv" NAME_WE)
add_dependencies(auto_charge_service_generate_messages_eus _auto_charge_service_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(auto_charge_service_geneus)
add_dependencies(auto_charge_service_geneus auto_charge_service_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS auto_charge_service_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(auto_charge_service
  "/home/c01/naya_navigation/src/auto_charge_service/msg/aurco_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/auto_charge_service
)

### Generating Services
_generate_srv_lisp(auto_charge_service
  "/home/c01/naya_navigation/src/auto_charge_service/srv/auto_charge_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/auto_charge_service
)

### Generating Module File
_generate_module_lisp(auto_charge_service
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/auto_charge_service
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(auto_charge_service_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(auto_charge_service_generate_messages auto_charge_service_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/c01/naya_navigation/src/auto_charge_service/msg/aurco_info.msg" NAME_WE)
add_dependencies(auto_charge_service_generate_messages_lisp _auto_charge_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/auto_charge_service/srv/auto_charge_srv.srv" NAME_WE)
add_dependencies(auto_charge_service_generate_messages_lisp _auto_charge_service_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(auto_charge_service_genlisp)
add_dependencies(auto_charge_service_genlisp auto_charge_service_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS auto_charge_service_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(auto_charge_service
  "/home/c01/naya_navigation/src/auto_charge_service/msg/aurco_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/auto_charge_service
)

### Generating Services
_generate_srv_nodejs(auto_charge_service
  "/home/c01/naya_navigation/src/auto_charge_service/srv/auto_charge_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/auto_charge_service
)

### Generating Module File
_generate_module_nodejs(auto_charge_service
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/auto_charge_service
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(auto_charge_service_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(auto_charge_service_generate_messages auto_charge_service_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/c01/naya_navigation/src/auto_charge_service/msg/aurco_info.msg" NAME_WE)
add_dependencies(auto_charge_service_generate_messages_nodejs _auto_charge_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/auto_charge_service/srv/auto_charge_srv.srv" NAME_WE)
add_dependencies(auto_charge_service_generate_messages_nodejs _auto_charge_service_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(auto_charge_service_gennodejs)
add_dependencies(auto_charge_service_gennodejs auto_charge_service_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS auto_charge_service_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(auto_charge_service
  "/home/c01/naya_navigation/src/auto_charge_service/msg/aurco_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/auto_charge_service
)

### Generating Services
_generate_srv_py(auto_charge_service
  "/home/c01/naya_navigation/src/auto_charge_service/srv/auto_charge_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/auto_charge_service
)

### Generating Module File
_generate_module_py(auto_charge_service
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/auto_charge_service
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(auto_charge_service_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(auto_charge_service_generate_messages auto_charge_service_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/c01/naya_navigation/src/auto_charge_service/msg/aurco_info.msg" NAME_WE)
add_dependencies(auto_charge_service_generate_messages_py _auto_charge_service_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/c01/naya_navigation/src/auto_charge_service/srv/auto_charge_srv.srv" NAME_WE)
add_dependencies(auto_charge_service_generate_messages_py _auto_charge_service_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(auto_charge_service_genpy)
add_dependencies(auto_charge_service_genpy auto_charge_service_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS auto_charge_service_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/auto_charge_service)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/auto_charge_service
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(auto_charge_service_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(auto_charge_service_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/auto_charge_service)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/auto_charge_service
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(auto_charge_service_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(auto_charge_service_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/auto_charge_service)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/auto_charge_service
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(auto_charge_service_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(auto_charge_service_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/auto_charge_service)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/auto_charge_service
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(auto_charge_service_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(auto_charge_service_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/auto_charge_service)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/auto_charge_service\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/auto_charge_service
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(auto_charge_service_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(auto_charge_service_generate_messages_py geometry_msgs_generate_messages_py)
endif()
