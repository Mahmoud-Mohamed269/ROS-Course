#!/usr/bin/env python

import sys
import rospy
from robotis.srv import counter
from robotis.srv import counterRequest
from robotis.srv import counterResponse

def handle_count_words(req):
    print("Returning the number of words in %s" %req.mystring)
    return counterResponse(len(req.mystring.split()))

def count_words_server():
    rospy.init_node('count_words_server')
    s = rospy.Service('count_words', counter, handle_count_words)
    print("Ready to count.")
    rospy.spin()



if __name__ == "__main__":
    count_words_server()
