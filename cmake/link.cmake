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

target_link_libraries(minimal_publisher
    test_lib
    # ${OpenCV_LIBS}
)
ament_target_dependencies(minimal_publisher
  rclcpp
  std_msgs
)

target_link_libraries(minimal_subscriber
    test_lib
)
ament_target_dependencies(minimal_subscriber
  rclcpp
  std_msgs
)


# used to link ROS libraries and executable file

