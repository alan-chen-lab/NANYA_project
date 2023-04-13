#!/usr/bin/env python
# Written by
# Hsuyu

import rospy
from sensor_msgs.msg import LaserScan


class RplidarFilter:
  def __init__(self):
    rospy.init_node('rplidar_filter', anonymous=False)
	
    # Topic Subscription
    rospy.Subscriber('/laser/scan_raw', LaserScan, self.laser_scan_callback)
    # Topic Publication
    self.laser_scan_pub = rospy.Publisher("/laser/scan", LaserScan, queue_size=1)
	
    rospy.spin()
	
  def laser_scan_callback(self, data):
    # get params from yaml
    min_ang = rospy.get_param("~min_ang")
    max_ang = rospy.get_param("~max_ang")
	
    scan = data
    start_angle = scan.angle_min
    current_angle = scan.angle_min
		
    count = 0

    range_list = list(scan.ranges)
	
    filtered_ranges = []
    filtered_intensities = []
		
    for j in range(len(range_list)):
		    
      # skip if angle smaller than ideal angle_min
      if start_angle < min_ang:
        start_angle = start_angle + scan.angle_increment
        current_angle = current_angle + scan.angle_increment
				
      else:
        filtered_ranges.append(range_list[j])
        filtered_intensities.append(scan.intensities[j])
        count = count + 1

        # break if next angle is bigger than ideal angle_max
        if current_angle + scan.angle_increment > max_ang:
		break

        current_angle = current_angle + scan.angle_increment

    # replace inf to 65.536			 
    for n, i in enumerate(filtered_ranges):	    
      if i > 65.536:
        filtered_ranges[n] = 65.536 
	
    scan.angle_min = min_ang
    scan.angle_max = max_ang
    scan.ranges = filtered_ranges
    scan.intensities = filtered_intensities
    self.laser_scan_pub.publish(scan)
	
	
if __name__ == '__main__':
  RplidarFilter()
