#!/usr/bin/env python

import rospy
from robotis.msg import mahmoud

def message_callback(message):
    rospy.loginfo("new data recieved: (%d, %d)"),
       message.x,message.y
    
rospy.init_node('sub_node', anonymous=False)
rospy.subscriber('topic_1', mahmoud, message_callback)
rospy.spin()


     
