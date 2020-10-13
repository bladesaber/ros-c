#include "ros/ros.h"
#include "std_msgs/String.h"
#include "hello/ser.h"
#include <iostream>

using namespace std;

bool serverCallback(hello::ser::Request& req, hello::ser::Response& res){
    cout<<"receive pwd: "<<req.pwd<<endl;

    sleep(2);

    if (req.pwd==123456)
    {
        res.result = true;
    }else
    {
        res.result = false;
    }
    return true;
}

int main(int argc, char **argv)
{
    cout<<"serve_sub begin"<<endl;
    ros::init(argc, argv, "server_sub");
    ros::NodeHandle nh;

    ros::ServiceServer server = nh.advertiseService("hello_server", &serverCallback);

    ros::spin();

    return 0;
}
