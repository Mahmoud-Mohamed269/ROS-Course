#!/usr/bin/env python


import sys
import rospy
from robotis.srv import counter
from robotis.srv import counterRequest
from robotis.srv import counterResponse

def count_words_client(mystring):
    rospy.wait_for_service("count_words")
    try:
        count_word = rospy.ServiceProxy("count_words", counter)
        resp1 = count_word(mystring)
        return resp1.count

    except rospy.ServiceException as e:
        print ("service failed: %s"%e)

def usage():
    return "%s [Iput a string]"%sys.argv[0]


if __name__ == "__main__":
    while not rospy.is_shutdown():
        mystring = raw_input ("Enter your sentence: ")
        print("Requesting number of words in %s"%(mystring))
        print("The number of words is %d"%(count_words_client(mystring)))
