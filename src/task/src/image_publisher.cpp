#include <iostream>
#include <ros/ros.h>
#include <stdio.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <cstdlib>

using namespace std;

int main(int argc, char **argv)
{
    cout<<"image_publisher.cpp start"<<endl;

    ros::init(argc, argv, "image_publisher_1");
    ros::NodeHandle nh;
    image_transport::ImageTransport it(nh);

    string topic_name = "camera/image/"+to_string(atoi(argv[2]));
    image_transport::Publisher pub = it.advertise(topic_name, 1);

    cv::Mat image = cv::imread(argv[1]);
    if(image.empty())
    {
      printf("open error\n");
    }
    sensor_msgs::ImagePtr msg = cv_bridge::CvImage(std_msgs::Header(), "bgr8", image).toImageMsg();
 
    ros::Rate loop_rate(20);
    while (nh.ok()) 
    {
      pub.publish(msg);
      ros::spinOnce();
      loop_rate.sleep();
    }

    return 0;
}

