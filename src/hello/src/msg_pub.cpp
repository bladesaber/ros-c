#include "ros/ros.h"
#include "hello/person.h"
#include "std_msgs/String.h"
#include <iostream>

using namespace std;

int main(int argc, char **argv)
{
    cout<<"msg_pub begin"<<endl;
    ros::init(argc, argv, "msg_pub");
    ros::NodeHandle nh;

    ros::Publisher pub = nh.advertise<hello::person>("msg_hello_topic", 100);
    ros::Rate rate(1);

    hello::person msg;
    msg.name = "name";
    msg.number = 1.25;
    msg.id = 10;
    msg.bool_v = true;

    while(ros::ok()){
        cout<<"name: "<<msg.name<<endl;
        cout<<"id: "<<to_string(msg.id)<<endl;
        pub.publish(msg);
        ros::spinOnce();
        rate.sleep();
    }

    return 0;
}

