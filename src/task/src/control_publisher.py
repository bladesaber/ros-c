#!/usr/bin/env python2
#coding:utf-8

import rospy
from std_msgs.msg import String

if __name__ == '__main__':
    rospy.init_node('control')
    pub = rospy.Publisher('control_topic', String, queue_size=1)

    rate = rospy.Rate(10)
    count = 0
    while not rospy.is_shutdown():
        if count>5:
            pub.publish("shutdown")
        else:
            pub.publish("start")
        count += 1
        rate.sleep()
