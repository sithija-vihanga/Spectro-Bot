#include "spectrobot_controller/simple_controller.hpp"

SimpleController::SimpleController(const std::string &name):Node(name)
{
    declare_parameter("wheel_radius", 0.0033);
    declare_parameter("wheel_seperation", 0.17);

    wheel_radius_ = get_parameter("wheel_radius").as_double();
    

}




