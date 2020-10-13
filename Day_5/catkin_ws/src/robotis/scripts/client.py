#!/usr/bin/env python

import rospy
from robotis.srv import counter
from robotis.srv import counterRequest
from robotis.srv import counterResponse

def number_words(s):
    rospy.wait_for_service('word_counter')
    try:
         c = rospy.Serviceproxy('word_counter',counter)
         no_of_words = 1
         for ch in text:
             if (ch == ' ' or ch == '\t' or ch == '\n'):
             no_of_words = no_of_words + 1
         print('Total number of words in String', no_of_words)

     except rospy.ROSINTERruptException, e:
           print " Service call failled: %s"%e
    

if __name__ == "__main":
     s = 'I love you\tYou are the best.'
     number_words()
