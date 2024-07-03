#ifdef SIMPLE_CONTROLLER.HPP
#define SIMPLE_CONTROLLER.HPP

#include <rclcpp/rclcpp.hpp>
#include <geometric_msgs/msg/twist_stamped.hpp>
#include <std_msgs/msg/float64_multi_array.hpp>
#include <Eigen/Core>


class SimpleController: public rclcpp::Node
{
    public:
        SimpleController(const std::string &name);

    private: 
        void velCallback(const geometric_msgs::msg);

        rclcpp::Subscription<geometric_msgs::msg::TwistStamped>::SharedPtr vel_sub_;
        rclcpp::Publisher<std_msgs::msg::Float64MultiArray>::SharedPtr wheel_cmd_pub_;

        double wheel_radius_;
        double wheel_seperation_;

        Eigen::Matrix2d speed_conversion_;

};

#endif