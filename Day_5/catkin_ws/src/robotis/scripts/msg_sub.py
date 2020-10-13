#!/usr/bin/env python

import rospy
from robotis.msg import m
import cmath

def message_callback(message):
    rospy.loginfo("new data recieved: (%d, %d)"),
       message.x,message.y
    z = complex(message.x,message.y);
      print ("The real part of complex number is : ",end="") 
      print (z.real) 
      print ("The imaginary part of complex number is : ",end="") 
      print (z.imag)

rospy.init_node('sub_node', anonymous=False)
rospy.subscriber('topic_1', m, message_callback)
rospy.spin()


     
