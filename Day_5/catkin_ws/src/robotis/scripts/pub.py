#!/usr/bin/env python
import rospy
from std_msgs.msg import Int32

def talker():
    pub = rospy.Publisher('chatter', Int32, queue_size=10)
    rospy.init_node('talker', anonymous=False)
    rate = rospy.Rate(10) # 10hz
    c = 0
    while not rospy.is_shutdown():
        rospy.loginfo(c)
        pub.publish(c)
        c = c + 1
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
