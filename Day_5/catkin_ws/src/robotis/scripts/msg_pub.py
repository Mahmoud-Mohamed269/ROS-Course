#!/usr/bin/env python

import rospy
from robotis.msg import mahmoud
import random

pub = rospy.Publisher('topic_1', mahmoud, queue_size=10)
rospy.init_node('pub_node', anonymous=False)
rate = rospy.Rate(10)


while not rospy.is_shutdown():
    com = mahmoud()
    com.x = int(random.random())
    com.y = int(random.random())
    rospy.loginfo("I publish:")
    rospy.loginfo(mahmoud)
    pub.publish(mahmoud)
    rate.sleep()
