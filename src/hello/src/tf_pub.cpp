#include "ros/ros.h"
#include <tf/transform_broadcaster.h>
#include "geometry_msgs/Point.h"
#include "tf/tf.h"
#include <iostream>

using namespace std;

int main(int argc, char **argv)
{
    cout<<"tf_pub begin"<<endl;
    ros::init(argc, argv, "tf_sub");
    ros::NodeHandle nh;

    tf::TransformBroadcaster transfer_pub;
    
    tf::Transform base2laser;
    base2laser.setOrigin(tf::Vector3(1, 0, 20));
    tf::Quaternion q;
    q.setRPY(0, 10, 0);
    base2laser.setRotation(q);

    ros::Rate rate(1);

    while(ros::ok()){
        transfer_pub.sendTransform(tf::StampedTransform(base2laser, ros::Time::now(), "base_link", "laser_link"));
        rate.sleep();
        transfer_pub.sendTransform(tf::StampedTransform(base2laser, ros::Time::now(), "laser_link", "person_link"));
        transfer_pub.sendTransform(tf::StampedTransform(base2laser, ros::Time::now(), "laser_link", "person2_link"));
        rate.sleep();
    }

    return 0;
}

