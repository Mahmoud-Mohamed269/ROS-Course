#!/usr/bin/env python

import rospy
from light_robot.msg import m
# importing "cmath" for complex number operations 

pub = rospy.publisher('topic_1', m, queue_size=10)
rospy.init_node('pub_node', anonymous=False)
rate = rospy.Rate(10)\
i = 0

while not rospy.is_shutdown():
      com = m()
      com.x = 5
      com.y = 3
      
      rospy.loginfo("I publish:")
      rospy.loginfo(m)
      pub.publish(m)
      rate.sleep()
      i+=1
      
