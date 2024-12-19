#include "test/test.hpp"

int main(int argc,char **argv)
{
    rclcpp::init(argc, argv);

    auto node = rclcpp::Node::make_shared("test_node");  
    rclcpp::WallRate loop_rate(1);
    Test test;
    while(rclcpp::ok())
    {
        rclcpp::spin_some(node);
        test.print("hello!!!");
        loop_rate.sleep();
    }
    rclcpp::shutdown();
    return 0;
}
