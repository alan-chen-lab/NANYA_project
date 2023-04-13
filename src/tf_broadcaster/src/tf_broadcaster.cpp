#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <nav_msgs/Odometry.h>
#include "sensor_msgs/LaserScan.h"

// #define M_PI 3.141592654

void sub_odom(const nav_msgs::Odometry::ConstPtr &msg)
{

	tf::Transform transform;
	transform.setOrigin(tf::Vector3(msg->pose.pose.position.x, msg->pose.pose.position.y, 0.0));

	geometry_msgs::Quaternion q; //?
	q = msg->pose.pose.orientation;
	tf::Quaternion qq = tf::Quaternion(q.x, q.y, q.z, q.w);
	transform.setRotation(qq);

	static tf::TransformBroadcaster br;
	br.sendTransform(
		tf::StampedTransform(
			transform,
			ros::Time::now(), "odom", "base_footprint"));
	// printf("odom to base_link ok!\n");
}

int main(int argc, char **argv)
{
	ros::init(argc, argv, "my_tf_broadcaster");

	ros::NodeHandle node;
	ros::Rate loop_rate(100);
	ros::Subscriber sub = node.subscribe("odom", 1, sub_odom);
	tf::Quaternion q0, q1, q2, q3;
	// q0.setRPY(0, 0, M_PI);
	q1.setRPY(0, 0, 0);
	q2.setRPY(0, M_PI, 0);			   // pitch: M_PI/yaw :M_PI
	q3.setRPY(-M_PI / 2, 0, M_PI / 2); //(-90, 0, 90)
	while (ros::ok())
	{
		ros::spinOnce();

		// static tf::TransformBroadcaster br0;
		// br0.sendTransform(
		// 	tf::StampedTransform(
		// 		tf::Transform(
		// 			q0, //(0, 180, 0)
		// 			tf::Vector3(0.0, 0.0, 0.0)),
		// 			ros::Time::now(),"temp_odom", "resized_odom"));

		static tf::TransformBroadcaster br1;
		br1.sendTransform(
			tf::StampedTransform(
				tf::Transform(
					q1,
					tf::Vector3(0.0, 0.0, 0.0)),
				ros::Time::now(), "base_footprint", "base_link"));

		static tf::TransformBroadcaster br2;
		br2.sendTransform(
			tf::StampedTransform(
				tf::Transform(
					q2,
					tf::Vector3(0.27, 0.0, 0.0)),
				ros::Time::now(), "base_link", "laser_link"));

		static tf::TransformBroadcaster br3;
		br3.sendTransform(
			tf::StampedTransform(
				tf::Transform(
					q3,
					tf::Vector3(-0.27, 0.0, 0.0)),
				ros::Time::now(), "base_link", "camera"));
		// static tf::TransformBroadcaster br4;
		// br4.sendTransform(
		// 	tf::StampedTransform(
		// 		tf::Transform(
		// 			tf::Quaternion(0, 0, 0, 1),
		// 			tf::Vector3(0.0, 0.0, 0.0)),
		// 			ros::Time::now(),"map", "block"));

		loop_rate.sleep();
	}

	return 0;
};
