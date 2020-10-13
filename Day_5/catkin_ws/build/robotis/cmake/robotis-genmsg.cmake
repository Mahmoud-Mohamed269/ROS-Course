# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robotis: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robotis_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mahmoud/catkin_ws/src/robotis/srv/counter.srv" NAME_WE)
add_custom_target(_robotis_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotis" "/home/mahmoud/catkin_ws/src/robotis/srv/counter.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(robotis
  "/home/mahmoud/catkin_ws/src/robotis/srv/counter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotis
)

### Generating Module File
_generate_module_cpp(robotis
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotis
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robotis_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robotis_generate_messages robotis_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mahmoud/catkin_ws/src/robotis/srv/counter.srv" NAME_WE)
add_dependencies(robotis_generate_messages_cpp _robotis_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotis_gencpp)
add_dependencies(robotis_gencpp robotis_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotis_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(robotis
  "/home/mahmoud/catkin_ws/src/robotis/srv/counter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotis
)

### Generating Module File
_generate_module_eus(robotis
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotis
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robotis_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robotis_generate_messages robotis_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mahmoud/catkin_ws/src/robotis/srv/counter.srv" NAME_WE)
add_dependencies(robotis_generate_messages_eus _robotis_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotis_geneus)
add_dependencies(robotis_geneus robotis_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotis_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(robotis
  "/home/mahmoud/catkin_ws/src/robotis/srv/counter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotis
)

### Generating Module File
_generate_module_lisp(robotis
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotis
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robotis_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robotis_generate_messages robotis_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mahmoud/catkin_ws/src/robotis/srv/counter.srv" NAME_WE)
add_dependencies(robotis_generate_messages_lisp _robotis_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotis_genlisp)
add_dependencies(robotis_genlisp robotis_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotis_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(robotis
  "/home/mahmoud/catkin_ws/src/robotis/srv/counter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotis
)

### Generating Module File
_generate_module_nodejs(robotis
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotis
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robotis_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robotis_generate_messages robotis_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mahmoud/catkin_ws/src/robotis/srv/counter.srv" NAME_WE)
add_dependencies(robotis_generate_messages_nodejs _robotis_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotis_gennodejs)
add_dependencies(robotis_gennodejs robotis_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotis_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(robotis
  "/home/mahmoud/catkin_ws/src/robotis/srv/counter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotis
)

### Generating Module File
_generate_module_py(robotis
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotis
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robotis_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robotis_generate_messages robotis_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mahmoud/catkin_ws/src/robotis/srv/counter.srv" NAME_WE)
add_dependencies(robotis_generate_messages_py _robotis_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotis_genpy)
add_dependencies(robotis_genpy robotis_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotis_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotis)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotis
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(robotis_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotis)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotis
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(robotis_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotis)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotis
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(robotis_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotis)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotis
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(robotis_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotis)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotis\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotis
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(robotis_generate_messages_py std_msgs_generate_messages_py)
endif()
