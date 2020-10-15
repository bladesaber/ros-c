#!/usr/bin/env python2
#coding:utf-8

import rospy
from std_msgs.msg import String
import cv2
import message_filters
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import os
import time

save_flag = False
frame_rate = 1
save_dir = "/home/bladesaber/Desktop/"

def imageCallback(imgPtr1, imgPtr2):
    global save_flag
    if save_flag:
        bridge = CvBridge()
        image_1 = bridge.imgmsg_to_cv2(imgPtr1,"bgr8")
        image_2 = bridge.imgmsg_to_cv2(imgPtr2, "bgr8")
        cv2.imwrite(os.path.join(save_dir, "t1.jpg"), image_1)
        cv2.imwrite(os.path.join(save_dir, "t2.jpg"), image_2)

def subCallback(msg):
    global save_flag
    if msg.data=='start' and (not save_flag):
        save_flag = True
        print "start take photo"
    elif msg.data=='shutdown' and save_flag:
        save_flag = False
        print "stop take photo"

    rospy.sleep(1.0)

if __name__ == '__main__':
    rospy.init_node('image_subscriber_syc')

    camera_topic_1 = rospy.get_param('~camera_topic_1', 'camera/image/10')
    camera_topic_2 = rospy.get_param('~camera_topic_2', 'camera/image/20')
    control_topic = rospy.get_param('~control_topic', 'control_topic_1')

    image_1_sub = message_filters.Subscriber(camera_topic_1, Image)
    image_2_sub = message_filters.Subscriber(camera_topic_2, Image)

    sync = message_filters.TimeSynchronizer([image_1_sub, image_2_sub], 100)
    sync.registerCallback(imageCallback)

    sub = rospy.Subscriber('control_topic', String, subCallback)

    rospy.spin()