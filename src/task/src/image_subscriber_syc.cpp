#include <iostream>
#include <ros/ros.h>
#include <stdio.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>
#include "std_msgs/String.h"

#include <message_filters/subscriber.h>
#include <message_filters/synchronizer.h>
#include <message_filters/time_synchronizer.h>
#include <message_filters/sync_policies/approximate_time.h>
#include <sensor_msgs/Image.h>

using namespace std;

bool save_flag = false;
int frame_rate = 1;
string save_dir = "/home/bladesaber/Desktop/";

void imageCallback(const sensor_msgs::ImageConstPtr& imgPtr1, const sensor_msgs::ImageConstPtr& imgPtr2)
{
  // cv::imshow("view_1", cv_bridge::toCvShare(imgPtr1, "bgr8")->image);
  // cv::imshow("view_2", cv_bridge::toCvShare(imgPtr2, "bgr8")->image);
  // cv::waitKey(30);

  if(save_flag){
    ROS_INFO("take photo");
    cv::Mat img1 = cv_bridge::toCvShare(imgPtr1, "bgr8")->image;
    cv::Mat img2 = cv_bridge::toCvShare(imgPtr2, "bgr8")->image;

    cv::imwrite(save_dir+"t1.jpg", img1);
    cv::imwrite(save_dir+"t2.jpg", img2);
    }
}

void subCallback(const std_msgs::String& submsg){
    // ROS_INFO("%s", submsg.data.c_str());
    string control_flag = submsg.data.c_str();
    if((control_flag=="start") && (!save_flag)){
      ROS_INFO("start take photo");
      save_flag = true;
    }
    else if ((control_flag=="shutdown") && (save_flag))
    {
      ROS_INFO("stop take photo");
      save_flag = false;
    }
}

int main(int argc, char **argv)
{
    cout<<"image_subscriber_syc.cpp start"<<endl;

    ros::init(argc, argv, "image_subscriber_syc");
    ros::NodeHandle nh;
    
    message_filters::Subscriber<sensor_msgs::Image> image_1_sub(nh, "camera/image/1", 1);
    message_filters::Subscriber<sensor_msgs::Image> image_2_sub(nh, "camera/image/2", 1);
    message_filters::TimeSynchronizer<sensor_msgs::Image, sensor_msgs::Image> sync(image_1_sub, image_2_sub, 10);
    sync.registerCallback(boost::bind(&imageCallback, _1, _2));

    ros::Subscriber sub = nh.subscribe("control_topic", 1000, &subCallback);
    ros::Rate rate(frame_rate);

    while(ros::ok()){
      ros::spinOnce();
      rate.sleep();
    }
    // ros::spin();

    return 0;
}