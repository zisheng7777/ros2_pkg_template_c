# target_link_libraries(<target> ... <item>... ...)
# used to link non-ROS libraries and executable file
target_link_libraries(test_node
    test_lib
    # ${OpenCV_LIBS}
)

ament_target_dependencies(test_node
  rclcpp
  std_msgs
)

# used to link ROS libraries and executable file

