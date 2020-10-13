#include "ros/ros.h"
#include "hello/person.h"
#include <iostream>

using namespace std;

void subCallback(const hello::person& submsg){
    cout<<"name: "<<submsg.name<<endl;
    cout<<"id: "<<to_string(submsg.id)<<endl;
    cout<<"number: "<<to_string(submsg.number)<<endl;
    cout<<"bool_v: "<<to_string(submsg.bool_v)<<endl;
}

int main(int argc, char **argv)
{
    cout<<"msg_pub begin"<<endl;
    ros::init(argc, argv, "msg_sub");
    ros::NodeHandle nh;

    ros::Subscriber sub = nh.subscribe("msg_hello_topic", 1000, &subCallback);

    ros::spin();

    return 0;
}