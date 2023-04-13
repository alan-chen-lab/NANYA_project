#!/usr/bin/env python
import rospy
from geometry_msgs.msg import PoseStamped
from tf.transformations import euler_from_quaternion

f = open("position.csv", "a")
f.write("time,x,y,theta,\n")
f.close()

def callback(data):
    q = (0, 0, data.pose.orientation.z, data.pose.orientation.w)
    yaw = euler_from_quaternion(q)[2]
    f = open("position.csv", "a")
    f.write("%s,%lf,%lf,%lf,\n" % (data.header.stamp.to_time(), data.pose.position.x, data.pose.position.y, yaw))
    f.close()
    
def listener():

    # In ROS, nodes are uniquely named. If two nodes with the same
    # node are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('listener', anonymous=True)

    rospy.Subscriber("/mapping/slam_out_pose", PoseStamped, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()


