#!/usr/bin/env python

import sys
import rospy
from light_robot.srv import se
from light_robot.srv import seRequest
from light_robot.srv import seResponse

def number_words(text):
    try:
         s = 'This Python program counts\tnumber of words in a String.'
         number_words(s)
         no_of_words = 1
         for ch in text:
             if (ch == ' ' or ch == '\t' or ch == '\n'):
             no_of_words += 1
         print('Total number of words in String', no_of_words)

     except rospy.ROSINTERruptException:
           pass
    


if __name__ == "__main":
     
