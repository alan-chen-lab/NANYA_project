#!/usr/bin/env python
# Written by
# Udomsin Seechampa, Cal-Comp Electronics Thailand PLC

import math

import rospy
from sensor_msgs.msg import LaserScan


class LaserConversion:
    def __init__(self):
        rospy.init_node('laser_conversion', anonymous=False)

        # Topic Subscription
        rospy.Subscriber('scan_raw', LaserScan, self.laser_scan_callback)

        # Topic Publication
        self.laser_scan_pub = rospy.Publisher("scan", LaserScan, queue_size=1)

        rospy.spin()

    def laser_scan_callback(self, data):
        laser_scan = data
        laser_scan_list = list(laser_scan.ranges)

        for n, i in enumerate(laser_scan_list):
            if i == 0 or math.isinf(i):
                laser_scan_list[n] = 65.536 

        laser_scan.ranges = laser_scan_list
        self.laser_scan_pub.publish(laser_scan)


if __name__ == '__main__':
    LaserConversion()
