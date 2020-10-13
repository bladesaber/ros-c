#include "ros/ros.h"
#include "std_msgs/String.h"
#include <iostream>

using namespace std;

int main(int argc, char **argv){
    cout << "hello_pub.cpp begin" << endl;
    ros::init(argc, argv, "hello_pub");
    ros::NodeHandle nh;
    
    ros::Publisher pub = nh.advertise<std_msgs::String>("hello_topic", 100);
    ros::Rate rate(1);

    std_msgs::String msg;
    msg.data = "hello I'm publisher";

    while(ros::ok()){
        ROS_INFO("%s", msg.data.c_str());
        pub.publish(msg);
        ros::spinOnce();
        rate.sleep();
    }
    return 0;
}