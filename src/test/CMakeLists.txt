cmake_minimum_required(VERSION 3.0.2)
project(test)
find_package(catkin REQUIRED COMPONENTS
  cv_bridge
  geometry_msgs
  image_transport
  roscpp
  rospy
  sensor_msgs
  std_msgs
)
 find_package (OpenCV REQUIRED)

catkin_package()

###########
## Build ##
###########

include_directories(
  include ${catkin_INCLUDE_DIRS}
  ${catkin_INCLUDE_DIRS}
  ${OpenCV_INCLUDE_DIRS}
)

add_executable(getImage src/getImage.cpp)
add_dependencies(getImage ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(getImage ${catkin_LIBRARIES} ${OpenCV_LIBS})