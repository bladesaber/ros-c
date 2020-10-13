#include <ros/ros.h>
#include <stdio.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/opencv.hpp>
#include <iostream>

using namespace std;
using namespace cv;

int main(int argc, char **argv)
{
    ros::init(argc, argv, "test");
    cout << "Built with OpenCV " << CV_VERSION << endl;
	Mat image = imread("/home/bladesaber/Desktop/1.jpg");//见注1 
	imshow("原始图像", image);
	// cvtColor(image, image, CV_RGB2GRAY);//见注5
	// imshow("灰度图像", image);
	waitKey(0);//见注6

    return 0;
}

