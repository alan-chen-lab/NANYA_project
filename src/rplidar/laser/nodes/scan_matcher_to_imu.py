#!/usr/bin/env python
import rospy
import tf
from sensor_msgs.msg import Imu
from geometry_msgs.msg import Pose2D, Quaternion


class ScanMatcher2IMU:
    def __init__(self):
        rospy.init_node("scan_match_2_imu", anonymous=False)
        self.imu_pub = rospy.Publisher("imu/laser", Imu, queue_size=1)
        self.scan_matcher_sub = rospy.Subscriber("pose2D", Pose2D, callback=self.scan_matcher_callback)
        self.last_time = rospy.Time.now()
        self.current_time = rospy.Time.now()
        self.init_imu_angle = True
        rospy.spin()

    def scan_matcher_callback(self, data):
        self.current_time = rospy.Time.now()
        dt = (self.current_time - self.last_time).to_sec()
        # Calculate Relative Yaw
        if self.init_imu_angle:
            self.last_imu_angle = data.theta
            self.last_time = self.current_time 
            self.init_imu_angle = False
            return

        current_imu_angle = data.theta
        dyaw = 0.0

        if (-3.1416 <= self.last_imu_angle < 0) and (0 < current_imu_angle <= 3.1416):
            dyaw = -((-3.1416 - self.last_imu_angle) + (3.1416 - current_imu_angle))
        elif ( 0 <= self.last_imu_angle < 3.1416 ) and (-3.1416 < current_imu_angle < 0):
            dyaw = ((3.1416- self.last_imu_angle) + (-3.1416 - current_imu_angle))
        else:
            dyaw = current_imu_angle - self.last_imu_angle

        # inverse direction to match imu_link 
        # dyaw = -dyaw 
        imu_msg = Imu()
        imu_msg.header.frame_id = "imu_link"
        imu_msg.header.stamp = rospy.Time.now()
        q_tmp = tf.transformations.quaternion_from_euler(0, 0, data.theta)
        imu_msg.orientation =  Quaternion(q_tmp[0], q_tmp[1], q_tmp[2], q_tmp[3])
        imu_msg.angular_velocity.x = 0
        imu_msg.angular_velocity.y = 0
        if dt == 0.0:
            imu_msg.angular_velocity.z = 0.0
        else:
            imu_msg.angular_velocity.z = dyaw/dt
        imu_noises = pow(0.00017, 2)  # = 0.01 degrees / sec
        imu_msg.orientation_covariance = [1e3, 0, 0, 0, 1e3, 0, 0, 0, imu_noises]
        self.last_imu_angle = current_imu_angle
        self.last_time = self.current_time 
        self.imu_pub.publish(imu_msg)

if __name__ == "__main__":
    ScanMatcher2IMU()
