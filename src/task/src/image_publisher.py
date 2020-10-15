#!/usr/bin/env python2
#coding:utf-8

import rospy
import cv2
from std_msgs.msg import Header
from sensor_msgs.msg import Image
import numpy as np
from cv_bridge import CvBridge
import sys

if __name__ == "__main__":
    rospy.init_node('image_publisher_1')

    topic = rospy.get_param('~publish_topic', 'camera/image/1')
    pub = rospy.Publisher(topic, Image, queue_size=1)
    rate = rospy.Rate(10)
    bridge = CvBridge()

    image_path = rospy.get_param('~image_path', '/home/bladesaber/Desktop/1.jpg')

    while not rospy.is_shutdown():
        image = cv2.imread(image_path)
        pub.publish(bridge.cv2_to_imgmsg(image, "bgr8"))
        rate.sleep()

