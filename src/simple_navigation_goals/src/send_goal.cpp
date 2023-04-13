// for gmapping_nav
#include <ros/ros.h>
#include <math.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
// #include <sensor_msgs/BatteryState.h> // for batteyr info
#include <std_srvs/Empty.h>           // for calling auto charge server

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

// callback battery info
// float percentage_ = 1.0;
// void batteryCallback(const sensor_msgs::BatteryState::ConstPtr &BatteryDeviceState)
// {
//     percentage_ = BatteryDeviceState->percentage;
//     // ROS_INFO("battery_percentage: %f", percentage_);
// }

int main(int argc, char **argv)
{
  ros::init(argc, argv, "send_goal");
  ros::NodeHandle nh;

  // double percentage_threshold_client = 0.4; // battery_th

  // battery and autocharge client
  // ros::Subscriber battery_info_sub = nh.subscribe("/battery_device_status", 1, batteryCallback); // 訂閱/battery資訊，topic:/battery
  ros::ServiceClient auto_charge_client = nh.serviceClient<std_srvs::Empty>("auto_charge_server"); // 創一個auto charge client, call for server
  std_srvs::Empty srv_;
  // battery and autocharge client
  ros::ServiceClient turnoff_led_client = nh.serviceClient<std_srvs::Empty>("turnoff_led");
  std_srvs::Empty srv_led;

  // tell the action client that we want to spin a thread by default
  MoveBaseClient ac("move_base", true);

  // wait for the action server to come up
  while (!ac.waitForServer(ros::Duration(5.0)))
  {
    ROS_INFO("Waiting for the move_base action server to come up");
  }

  float goal_x, goal_y;
  // 0, 0, -90
  //  degree to euler angle
  float degree_x, degree_y, dergee_z, roll_x, pitch_y, yaw_z, qx, qy, qz, qw, stay_time;

  for (int i=0; i< (argc-1)/4; i++) {

    move_base_msgs::MoveBaseGoal goal;
    sscanf(argv[i*4+1], "%f", &goal_x);
    sscanf(argv[i*4+2], "%f", &goal_y);
    sscanf(argv[i*4+3], "%f", &dergee_z);
    sscanf(argv[i*4+4], "%f", &stay_time);
    printf("%f %f %f %f\n", goal_x, goal_y, dergee_z, stay_time);
    // continue;

    // we'll send a goal to the robot to move 1 meter forward
    goal.target_pose.header.frame_id = "map"; // base_link, map
    goal.target_pose.header.stamp = ros::Time::now();

    goal.target_pose.pose.position.x = goal_x; // amcl_pose(m)
    goal.target_pose.pose.position.y = goal_y;

    degree_x = 0;
    degree_y = 0;
    roll_x = degree_x * M_PI / 180;
    pitch_y = degree_y * M_PI / 180;
    yaw_z = dergee_z * M_PI / 180;
    // euler_to_quaternion
    qx = sin(roll_x / 2) * cos(pitch_y / 2) * cos(yaw_z / 2) - cos(roll_x / 2) * sin(pitch_y / 2) * sin(yaw_z / 2);
    qy = cos(roll_x / 2) * sin(pitch_y / 2) * cos(yaw_z / 2) + sin(roll_x / 2) * cos(pitch_y / 2) * sin(yaw_z / 2);
    qz = cos(roll_x / 2) * cos(pitch_y / 2) * sin(yaw_z / 2) - sin(roll_x / 2) * sin(pitch_y / 2) * cos(yaw_z / 2);
    qw = cos(roll_x / 2) * cos(pitch_y / 2) * cos(yaw_z / 2) + sin(roll_x / 2) * sin(pitch_y / 2) * sin(yaw_z / 2);

    goal.target_pose.pose.orientation.x = qx; // 0;
    goal.target_pose.pose.orientation.y = qy; // 0;
    goal.target_pose.pose.orientation.z = qz; //-0.7071068;
    goal.target_pose.pose.orientation.w = qw; // 0.7071068;

    ROS_INFO("Sending goal");
    ac.sendGoal(goal);

    ac.waitForResult();

    if (ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
      ROS_INFO("reach destination");
    else
      ROS_INFO("failed to move");

    ros::Duration(stay_time).sleep(); // sleep for a few sec
    // ros::spinOnce();

    // //判斷電量
    // if (percentage_ <= percentage_threshold_client)
    // {
    //   ROS_INFO("call auto_charge server");
    //   auto_charge_client.call(srv_);
    // }

  } // for

  // if finish task, back to charge station
  ROS_INFO("run auto_charge");
  auto_charge_client.call(srv_);

  // ros::shutdown(); // close ros

  // if finish task, turnoff led
  ROS_INFO("turn off led");
  turnoff_led_client.call(srv_led);  

  return 0;
} //main
