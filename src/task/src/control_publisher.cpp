#include "ros/ros.h"
#include "std_msgs/String.h"
#include <iostream>

using namespace std;

int main(int argc, char **argv){
    cout << "control_publisher.cpp begin" << endl;
    ros::init(argc, argv, "control");
    ros::NodeHandle nh;
    
    ros::Publisher pub = nh.advertise<std_msgs::String>("control_topic", 100);
    ros::Rate rate(0.5);

    std_msgs::String msg;
    msg.data = "start";

    int count = 0;
    while(ros::ok()){
        ROS_INFO("%s", msg.data.c_str());
        pub.publish(msg);

        if(count>5){
            msg.data = "shutdown";
        }
        count += 1;

        ros::spinOnce();
        rate.sleep();
    }
    return 0;
}