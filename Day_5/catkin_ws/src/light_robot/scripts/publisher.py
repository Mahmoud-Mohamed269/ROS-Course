#!/usr/bin/env python
import rospy
from std_msgs.msg import string

def talker():
    pub = rospy.Publisher('chatter', string, queue_size=10)
    rospy.init_node('talker', anonymous=False)
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
          i = 0
          c = i+1
          rospy.loginfo(c)
          pub.publish(c)
          rate.sleep()

if __name__ == '__main__':
     try:
         talker()
     except rospy.ROSInterruptException:
         pass
