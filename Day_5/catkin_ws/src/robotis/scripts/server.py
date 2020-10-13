#!/usr/bin/env python

import rospy
from robotis.srv import counter
from robotis.srv import counterRequest
from robotis.srv import counterResponse

def handle(req):
    return counterResponse(req.x)

def word_counter_server():
    rospy.init_node('word_counter_server')
    z = rospy.Service('word_counter', counter, handle)
    rospy.spin()



if __name__ == "__main":
       word_counter_server()
