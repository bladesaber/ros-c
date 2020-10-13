#include "ros/ros.h"
#include "std_msgs/String.h"
#include "hello/ser.h"
#include <iostream>
#include <cstdlib>

using namespace std;

int main(int argc, char **argv)
{
    cout<<"serve_pub begin"<<endl;

    ros::init(argc, argv, "server_pub");
    ros::NodeHandle nh;

    ros::ServiceClient client = nh.serviceClient<hello::ser>("hello_server", 100);

    hello::ser info;
    info.request.pwd = atoi(argv[1]);

    if (client.call(info))
    {
        ROS_INFO("client connect success");
        if(info.response.result){
            ROS_INFO("welcome");
        }else{
            ROS_INFO("wrong pwd");
        }
    }else{
        ROS_INFO("client connect fail");
    }
    
    return 0;
}

