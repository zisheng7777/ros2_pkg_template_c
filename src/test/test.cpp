#include "test/test.hpp"

int main(int argc,char **argv)
{
    rclcpp::init(argc, argv);

    auto node = rclcpp::Node::make_shared("test_node");  

    Test test;
    while(rclcpp::ok())
    {
        test.print("hello!!!");
    }
    return 0;
}
