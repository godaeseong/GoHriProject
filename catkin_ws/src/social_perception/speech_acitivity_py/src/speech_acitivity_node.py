#!/usr/bin/python
#-*- encoding: utf8 -*-

import rospy
from perception_base.perception_base import PerceptionBase

from std_msgs.msg import Empty


class SpeechActivition(PerceptionBase):
    def __init__(self):
        super(SpeechActivition, self).__init__("speech_activition")    
        rospy.Subscriber('/end_of_speech', Empty, self.handle_end_of_speech)
        rospy.Subscriber('/silency_detected', Empty, self.handle_silency)
        rospy.Subscriber('/start_of_speech', Empty, self.handle_start_of_speech)
        rospy.loginfo('[%s] initialze done...'%rospy.get_name())
        rospy.spin()

    def handle_end_of_speech(self, msg):
        self.raise_event(self.conf_data.keys()[0], 'end_of_speech')


    def handle_silency(self, msg):
        self.raise_event(self.conf_data.keys()[0], 'silency_detected')


    def handle_start_of_speech(self, msg):
        self.raise_event(self.conf_data.keys()[0], 'start_of_speech')


if __name__ == '__main__':
    m = SpeechActivition()
