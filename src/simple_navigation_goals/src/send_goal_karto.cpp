// for karto 
#include <ros/ros.h>
#include <math.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

int main(int argc, char **argv)
{
  ros::init(argc, argv, "send_goal");

  // tell the action client that we want to spin a thread by default
  MoveBaseClient ac("move_base", true);

  // wait for the action server to come up
  while (!ac.waitForServer(ros::Duration(5.0)))
  {
    ROS_INFO("Waiting for the move_base action server to come up");
  }

  float goal_x, goal_y;
  move_base_msgs::MoveBaseGoal goal;

  // we'll send a goal to the robot to move 1 meter forward
  goal.target_pose.header.frame_id = "base_link"; // base_link, map
  goal.target_pose.header.stamp = ros::Time::now();

  ROS_INFO("goal_x:");
  scanf("%f", &goal_x);
  ROS_INFO("goal_y:");
  scanf("%f", &goal_y);

  goal.target_pose.pose.position.x = goal_x; // adjust, amcl_pose(m)
  goal.target_pose.pose.position.y = goal_y;

  //  degree to euler angle
  float degree_x, degree_y, dergee_z, roll_x, pitch_y, yaw_z, qx, qy, qz, qw;
  degree_x = 0;
  degree_y = 0;
  ROS_INFO("dergee_z:");
  scanf("%f", &dergee_z);
  dergee_z = dergee_z - 180;    // adjust
  roll_x = degree_x * M_PI / 180;
  pitch_y = degree_y * M_PI / 180;
  yaw_z = dergee_z * M_PI / 180;
  // euler_to_quaternion
  qx = sin(roll_x / 2) * cos(pitch_y / 2) * cos(yaw_z / 2) - cos(roll_x / 2) * sin(pitch_y / 2) * sin(yaw_z / 2);
  qy = cos(roll_x / 2) * sin(pitch_y / 2) * cos(yaw_z / 2) + sin(roll_x / 2) * cos(pitch_y / 2) * sin(yaw_z / 2);
  qz = cos(roll_x / 2) * cos(pitch_y / 2) * sin(yaw_z / 2) - sin(roll_x / 2) * sin(pitch_y / 2) * cos(yaw_z / 2);
  qw = cos(roll_x / 2) * cos(pitch_y / 2) * cos(yaw_z / 2) + sin(roll_x / 2) * sin(pitch_y / 2) * sin(yaw_z / 2);

  goal.target_pose.pose.orientation.x = qx; 
  goal.target_pose.pose.orientation.y = qy; 
  goal.target_pose.pose.orientation.z = qz; 
  goal.target_pose.pose.orientation.w = qw; 

  // ROS_INFO("Sending goal");
  ac.sendGoal(goal);

  ac.waitForResult();

  if (ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
    ROS_INFO("reach destination");
  else
    ROS_INFO("failed to move");

  return 0;
}
