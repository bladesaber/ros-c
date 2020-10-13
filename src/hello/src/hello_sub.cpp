#include "ros/ros.h"
#include "std_msgs/String.h"
#include <iostream>

using namespace std;

void subCallback(const std_msgs::String& submsg){
    ROS_INFO("%s", submsg.data.c_str());
}

int main(int argc, char **argv)
{
    cout<<"hello_sub.cpp begin"<<endl;
    ros::init(argc, argv, "hello_sub");
    ros::NodeHandle nh;

    ros::Subscriber sub = nh.subscribe("hello_topic", 1000, &subCallback);

    ros::spin();

    return 0;
}

