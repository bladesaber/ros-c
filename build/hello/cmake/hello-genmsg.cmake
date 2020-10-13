# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hello: 8 messages, 1 services")

set(MSG_I_FLAGS "-Ihello:/home/bladesaber/Desktop/ros-c/src/hello/msg;-Ihello:/home/bladesaber/Desktop/ros-c/devel/share/hello/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hello_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoAction.msg" NAME_WE)
add_custom_target(_hello_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hello" "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoAction.msg" "actionlib_msgs/GoalID:hello/demoFeedback:actionlib_msgs/GoalStatus:hello/demoActionResult:hello/demoActionFeedback:hello/demoGoal:std_msgs/Header:hello/demoResult:hello/demoActionGoal"
)

get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionGoal.msg" NAME_WE)
add_custom_target(_hello_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hello" "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionGoal.msg" "actionlib_msgs/GoalID:hello/demoGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionResult.msg" NAME_WE)
add_custom_target(_hello_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hello" "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionResult.msg" "hello/demoResult:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoGoal.msg" NAME_WE)
add_custom_target(_hello_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hello" "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoGoal.msg" ""
)

get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionFeedback.msg" NAME_WE)
add_custom_target(_hello_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hello" "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionFeedback.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:hello/demoFeedback:std_msgs/Header"
)

get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/src/hello/msg/person.msg" NAME_WE)
add_custom_target(_hello_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hello" "/home/bladesaber/Desktop/ros-c/src/hello/msg/person.msg" ""
)

get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoFeedback.msg" NAME_WE)
add_custom_target(_hello_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hello" "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoFeedback.msg" ""
)

get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/src/hello/srv/ser.srv" NAME_WE)
add_custom_target(_hello_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hello" "/home/bladesaber/Desktop/ros-c/src/hello/srv/ser.srv" ""
)

get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoResult.msg" NAME_WE)
add_custom_target(_hello_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hello" "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoResult.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionResult.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionFeedback.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoResult.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello
)
_generate_msg_cpp(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello
)
_generate_msg_cpp(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello
)
_generate_msg_cpp(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello
)
_generate_msg_cpp(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello
)
_generate_msg_cpp(hello
  "/home/bladesaber/Desktop/ros-c/src/hello/msg/person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello
)
_generate_msg_cpp(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello
)
_generate_msg_cpp(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello
)

### Generating Services
_generate_srv_cpp(hello
  "/home/bladesaber/Desktop/ros-c/src/hello/srv/ser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello
)

### Generating Module File
_generate_module_cpp(hello
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hello_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hello_generate_messages hello_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoAction.msg" NAME_WE)
add_dependencies(hello_generate_messages_cpp _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionGoal.msg" NAME_WE)
add_dependencies(hello_generate_messages_cpp _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionResult.msg" NAME_WE)
add_dependencies(hello_generate_messages_cpp _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoGoal.msg" NAME_WE)
add_dependencies(hello_generate_messages_cpp _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionFeedback.msg" NAME_WE)
add_dependencies(hello_generate_messages_cpp _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/src/hello/msg/person.msg" NAME_WE)
add_dependencies(hello_generate_messages_cpp _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoFeedback.msg" NAME_WE)
add_dependencies(hello_generate_messages_cpp _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/src/hello/srv/ser.srv" NAME_WE)
add_dependencies(hello_generate_messages_cpp _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoResult.msg" NAME_WE)
add_dependencies(hello_generate_messages_cpp _hello_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hello_gencpp)
add_dependencies(hello_gencpp hello_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hello_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionResult.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionFeedback.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoResult.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello
)
_generate_msg_eus(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello
)
_generate_msg_eus(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello
)
_generate_msg_eus(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello
)
_generate_msg_eus(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello
)
_generate_msg_eus(hello
  "/home/bladesaber/Desktop/ros-c/src/hello/msg/person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello
)
_generate_msg_eus(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello
)
_generate_msg_eus(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello
)

### Generating Services
_generate_srv_eus(hello
  "/home/bladesaber/Desktop/ros-c/src/hello/srv/ser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello
)

### Generating Module File
_generate_module_eus(hello
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hello_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hello_generate_messages hello_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoAction.msg" NAME_WE)
add_dependencies(hello_generate_messages_eus _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionGoal.msg" NAME_WE)
add_dependencies(hello_generate_messages_eus _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionResult.msg" NAME_WE)
add_dependencies(hello_generate_messages_eus _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoGoal.msg" NAME_WE)
add_dependencies(hello_generate_messages_eus _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionFeedback.msg" NAME_WE)
add_dependencies(hello_generate_messages_eus _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/src/hello/msg/person.msg" NAME_WE)
add_dependencies(hello_generate_messages_eus _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoFeedback.msg" NAME_WE)
add_dependencies(hello_generate_messages_eus _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/src/hello/srv/ser.srv" NAME_WE)
add_dependencies(hello_generate_messages_eus _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoResult.msg" NAME_WE)
add_dependencies(hello_generate_messages_eus _hello_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hello_geneus)
add_dependencies(hello_geneus hello_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hello_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionResult.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionFeedback.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoResult.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello
)
_generate_msg_lisp(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello
)
_generate_msg_lisp(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello
)
_generate_msg_lisp(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello
)
_generate_msg_lisp(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello
)
_generate_msg_lisp(hello
  "/home/bladesaber/Desktop/ros-c/src/hello/msg/person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello
)
_generate_msg_lisp(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello
)
_generate_msg_lisp(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello
)

### Generating Services
_generate_srv_lisp(hello
  "/home/bladesaber/Desktop/ros-c/src/hello/srv/ser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello
)

### Generating Module File
_generate_module_lisp(hello
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hello_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hello_generate_messages hello_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoAction.msg" NAME_WE)
add_dependencies(hello_generate_messages_lisp _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionGoal.msg" NAME_WE)
add_dependencies(hello_generate_messages_lisp _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionResult.msg" NAME_WE)
add_dependencies(hello_generate_messages_lisp _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoGoal.msg" NAME_WE)
add_dependencies(hello_generate_messages_lisp _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionFeedback.msg" NAME_WE)
add_dependencies(hello_generate_messages_lisp _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/src/hello/msg/person.msg" NAME_WE)
add_dependencies(hello_generate_messages_lisp _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoFeedback.msg" NAME_WE)
add_dependencies(hello_generate_messages_lisp _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/src/hello/srv/ser.srv" NAME_WE)
add_dependencies(hello_generate_messages_lisp _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoResult.msg" NAME_WE)
add_dependencies(hello_generate_messages_lisp _hello_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hello_genlisp)
add_dependencies(hello_genlisp hello_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hello_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionResult.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionFeedback.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoResult.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello
)
_generate_msg_nodejs(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello
)
_generate_msg_nodejs(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello
)
_generate_msg_nodejs(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello
)
_generate_msg_nodejs(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello
)
_generate_msg_nodejs(hello
  "/home/bladesaber/Desktop/ros-c/src/hello/msg/person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello
)
_generate_msg_nodejs(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello
)
_generate_msg_nodejs(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello
)

### Generating Services
_generate_srv_nodejs(hello
  "/home/bladesaber/Desktop/ros-c/src/hello/srv/ser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello
)

### Generating Module File
_generate_module_nodejs(hello
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(hello_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(hello_generate_messages hello_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoAction.msg" NAME_WE)
add_dependencies(hello_generate_messages_nodejs _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionGoal.msg" NAME_WE)
add_dependencies(hello_generate_messages_nodejs _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionResult.msg" NAME_WE)
add_dependencies(hello_generate_messages_nodejs _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoGoal.msg" NAME_WE)
add_dependencies(hello_generate_messages_nodejs _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionFeedback.msg" NAME_WE)
add_dependencies(hello_generate_messages_nodejs _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/src/hello/msg/person.msg" NAME_WE)
add_dependencies(hello_generate_messages_nodejs _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoFeedback.msg" NAME_WE)
add_dependencies(hello_generate_messages_nodejs _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/src/hello/srv/ser.srv" NAME_WE)
add_dependencies(hello_generate_messages_nodejs _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoResult.msg" NAME_WE)
add_dependencies(hello_generate_messages_nodejs _hello_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hello_gennodejs)
add_dependencies(hello_gennodejs hello_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hello_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionResult.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionFeedback.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoResult.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello
)
_generate_msg_py(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello
)
_generate_msg_py(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello
)
_generate_msg_py(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello
)
_generate_msg_py(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello
)
_generate_msg_py(hello
  "/home/bladesaber/Desktop/ros-c/src/hello/msg/person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello
)
_generate_msg_py(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello
)
_generate_msg_py(hello
  "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello
)

### Generating Services
_generate_srv_py(hello
  "/home/bladesaber/Desktop/ros-c/src/hello/srv/ser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello
)

### Generating Module File
_generate_module_py(hello
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hello_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hello_generate_messages hello_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoAction.msg" NAME_WE)
add_dependencies(hello_generate_messages_py _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionGoal.msg" NAME_WE)
add_dependencies(hello_generate_messages_py _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionResult.msg" NAME_WE)
add_dependencies(hello_generate_messages_py _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoGoal.msg" NAME_WE)
add_dependencies(hello_generate_messages_py _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoActionFeedback.msg" NAME_WE)
add_dependencies(hello_generate_messages_py _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/src/hello/msg/person.msg" NAME_WE)
add_dependencies(hello_generate_messages_py _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoFeedback.msg" NAME_WE)
add_dependencies(hello_generate_messages_py _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/src/hello/srv/ser.srv" NAME_WE)
add_dependencies(hello_generate_messages_py _hello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bladesaber/Desktop/ros-c/devel/share/hello/msg/demoResult.msg" NAME_WE)
add_dependencies(hello_generate_messages_py _hello_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hello_genpy)
add_dependencies(hello_genpy hello_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hello_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(hello_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(hello_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(hello_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(hello_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(hello_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(hello_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(hello_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(hello_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(hello_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(hello_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
