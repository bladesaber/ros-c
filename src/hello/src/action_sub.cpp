#include "ros/ros.h"
#include <iostream>
#include <actionlib/server/simple_action_server.h>
#include "hello/demoAction.h"
#include "hello/Demo_head.h"

using namespace std;

int main(int argc, char **argv)
{
    cout<<"action_sub.cpp begin"<<endl;

    ros::init(argc, argv, "demo_action");
    ROS_INFO("Starting Demo Action Server");

    Demo_actionAction action_obj(ros::this_node::getName());

    ros::spin();

    return 0;
}

