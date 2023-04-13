// for multi goal
#include <ros/ros.h>
#include <math.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
#include <ros/time.h>
#include <ros/duration.h>

#include <simple_navigation_goals/multi_point.h> // for multi goal srv
// #include <multi_point.h> // for multi goal srv

#include <sensor_msgs/BatteryState.h> // for batteyr info
#include <std_srvs/Empty.h>           // for calling auto charge server

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

// int lengh = 0;
// int FLAG_service_first_call = 0;

// std_srvs::Empty server;                // create empty server name
ros::ServiceClient auto_charge_client; // auto charge client

int BATTERY_Threshold_Client; // BATTERY_Threshold

// callback battery info
float percentage_ = 1.0;
void batteryCallback(const sensor_msgs::BatteryState::ConstPtr &BatteryDeviceState)
{
    percentage_ = BatteryDeviceState->percentage;
    ROS_INFO("battery_percentage: %f", percentage_);
}

bool handle_get_goals(simple_navigation_goals::multi_point::Request &req, simple_navigation_goals::multi_point::Response &res)
{
    // int lengh = sizeof(req.x_goal) / sizeof(req.x_goal[0]);
    // float data[lengh][4] = {}; // [x, y, theta, sec]

    // for (int i = 0; i < lengh; i++) // save multi point
    // {
    //     data[i][0] = req.x_goal[i];
    //     data[i][1] = req.y_goal[i];
    //     data[i][2] = req.theta_goal[i];
    //     data[i][3] = req.sec_goal[i];
    // }
    // ROS_INFO("success!");
    // // FLAG_service_first_call = 1;
    // // return data

    // // tell the action client that we want to spin a thread by default
    // MoveBaseClient ac("move_base", true);

    // // wait for the action server to come up
    // while (!ac.waitForServer(ros::Duration(5.0)) || ros::ok())
    // {
    //     ROS_INFO("Waiting for the move_base action server to come up");
    // }
    // move_base_msgs::MoveBaseGoal goal;

    // // we'll send a goal to the robot to move 1 meter forward
    // goal.target_pose.header.frame_id = "map"; // base_link, map
    // goal.target_pose.header.stamp = ros::Time::now();

    // float degree_x, degree_y, dergee_z, roll_x, pitch_y, yaw_z, qx, qy, qz, qw;
    // degree_x = 0;
    // degree_y = 0;

    // for (int j = 0; j < lengh; j++) // send multi point
    // {
    //     ros::spinOnce();
    //     //判斷電量
    //     if (percentage_ <= BATTERY_Threshold_Client)
    //     {
    //         ROS_INFO("call server!!");
    //         std_srvs::Empty srv;
    //         auto_charge_client.call(srv);
    //     }

    //     //---start go pose---
    //     goal.target_pose.pose.position.x = data[j][0]; // amcl_pose(m)
    //     goal.target_pose.pose.position.y = data[j][1];

    //     // 0, 0, -90
    //     //  degree to euler angle
    //     roll_x = degree_x * M_PI / 180;
    //     pitch_y = degree_y * M_PI / 180;
    //     // yaw_z = data[j][2] * M_PI / 180;
    //     // euler_to_quaternion
    //     qx = sin(roll_x / 2) * cos(pitch_y / 2) * cos(data[j][2] / 2) - cos(roll_x / 2) * sin(pitch_y / 2) * sin(data[j][2] / 2);
    //     qy = cos(roll_x / 2) * sin(pitch_y / 2) * cos(data[j][2] / 2) + sin(roll_x / 2) * cos(pitch_y / 2) * sin(data[j][2] / 2);
    //     qz = cos(roll_x / 2) * cos(pitch_y / 2) * sin(data[j][2] / 2) - sin(roll_x / 2) * sin(pitch_y / 2) * cos(data[j][2] / 2);
    //     qw = cos(roll_x / 2) * cos(pitch_y / 2) * cos(data[j][2] / 2) + sin(roll_x / 2) * sin(pitch_y / 2) * sin(data[j][2] / 2);

    //     goal.target_pose.pose.orientation.x = qx; // 0;
    //     goal.target_pose.pose.orientation.y = qy; // 0;
    //     goal.target_pose.pose.orientation.z = qz; //-0.7071068;
    //     goal.target_pose.pose.orientation.w = qw; // 0.7071068;

    //     // ROS_INFO("Sending goal");
    //     ac.sendGoal(goal);

    //     ac.waitForResult();

    //     if (ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
    //         ROS_INFO("reach destination [%d]", j + 1);
    //     else
    //         ROS_INFO("failed to move");

    //     ros::Duration(data[j][3]).sleep(); // sleep for a few sec
    // }
    // // back to charge
    // std_srvs::Empty srv_;
    // auto_charge_client.call(srv_);
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "send_multi_goals");
    ros::NodeHandle n;

    BATTERY_Threshold_Client = 0.7; // for roslaunch param
    ros::param::get("~battery_threshold_client", BATTERY_Threshold_Client);

    ros::ServiceServer service = n.advertiseService("send_multi_goals", handle_get_goals); // web server

    ros::Subscriber battery_info_sub = n.subscribe("/battery_device_status", 1, batteryCallback); // 訂閱/battery資訊，topic:/battery
    auto_charge_client = n.serviceClient<std_srvs::Empty>("auto_charge_server");                  // 創一個client，請求名叫auto_charge_server的server，消息類型要改(auto_charge_service::auto_charge_srv)
    // std_srvs::Empty server;                                                                       // create empty server name

    ROS_INFO("waiting to get web goals!");
    ros::spin();
    return 0;
}
