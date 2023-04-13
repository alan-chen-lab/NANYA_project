// for multi goal
#include <ros/ros.h>
#include <math.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
#include <ros/time.h>
#include <ros/duration.h>

#include <simple_navigation_goals/multi_point.h> // for multi goal srv

#include <sensor_msgs/BatteryState.h> // for batteyr info
#include <std_srvs/Empty.h>           // for calling auto charge server
#include <vector>

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

// ros::ServiceClient auto_charge_client; // auto charge client
// int BATTERY_Threshold_Client; // BATTERY_Threshold

// // callback battery info
// float percentage_ = 1.0;
// void batteryCallback(const sensor_msgs::BatteryState::ConstPtr &BatteryDeviceState)
// {
//     percentage_ = BatteryDeviceState->percentage;
//     // ROS_INFO("battery_percentage: %f", percentage_);
// }

std::vector<float> v_x;
std::vector<float> v_y;
std::vector<float> v_theta;
std::vector<float> v_sec;
float *x_value;
float *y_value;
float *theta_value;
float *sec_value;
int size;

bool handle_get_goals(simple_navigation_goals::multi_point::Request &req, simple_navigation_goals::multi_point::Response &res)
{
    std::vector<float> v_x(req.x_goal);
    std::vector<float> v_y(req.y_goal);
    std::vector<float> v_theta(req.theta_goal);
    std::vector<float> v_sec(req.sec_goal);
    size = v_x.size();
    // for (int i = 0; i < size; i++){
    //     x_value = &v_x[i];
    //     y_value = &v_y[i];
    //     theta_value = &v_theta[i];
    //     sec_value = &v_sec[i];
    //     ROS_INFO("req.x_goal: %f", *x_value);
    //     ROS_INFO("req.y_goal: %f", *y_value);
    //     ROS_INFO("req.theta_goal: %f", *theta_value);
    //     ROS_INFO("req.sec_goal: %f", *sec_value);
    //     ROS_INFO("----------------------------------");
    // }
    return true;
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "send_multi_goals_v2");

    // BATTERY_Threshold_Client = 0.7; // for roslaunch param
    // ros::param::get("~battery_threshold_client", BATTERY_Threshold_Client);

    ros::NodeHandle n;

    ros::ServiceServer service = n.advertiseService("send_multi_goals", handle_get_goals); // web server
    ROS_INFO("waiting to get web goals!");

    // ros::Subscriber battery_info_sub = n.subscribe("/battery_device_status", 1, batteryCallback); // 訂閱/battery資訊，topic:/battery
    // auto_charge_client = n.serviceClient<std_srvs::Empty>("auto_charge_server");                  // 創一個client，請求名叫auto_charge_server的server，消息類型要改(auto_charge_service::auto_charge_srv)

    // tell the action client that we want to spin a thread by default
    MoveBaseClient ac("move_base", true);
    // wait for the action server to come up
    while (!ac.waitForServer(ros::Duration(10.0)))
    {
        ROS_INFO("Waiting for the move_base action server to come up");
        ros::shutdown();
    }
    move_base_msgs::MoveBaseGoal goal;

    // we'll send a goal to the robot to move 1 meter forward
    goal.target_pose.header.frame_id = "map"; // base_link, map
    goal.target_pose.header.stamp = ros::Time::now();

    for (int i = 0; i < size; i++){
        x_value = &v_x[i];
        y_value = &v_y[i];
        theta_value = &v_theta[i];
        sec_value = &v_sec[i];
        ROS_INFO("req.x_goal: %f", *x_value);
        ROS_INFO("req.y_goal: %f", *y_value);
        ROS_INFO("req.theta_goal: %f", *theta_value);
        ROS_INFO("req.sec_goal: %f", *sec_value);
        ROS_INFO("----------------------------------");

        // ros::spinOnce();
        // //判斷電量
        // if (percentage_ <= BATTERY_Threshold_Client)
        // {
        //     ROS_INFO("call auto-charge server!");
        //     std_srvs::Empty srv;
        //     auto_charge_client.call(srv);
        // }

        //---start go pose---
        goal.target_pose.pose.position.x = *x_value; 
        goal.target_pose.pose.position.y = *y_value;

        float degree_x, degree_y, dergee_z, roll_x, pitch_y, yaw_z, qx, qy, qz, qw;
        degree_x = 0;
        degree_y = 0;
        //  degree to euler angle
        roll_x = degree_x * M_PI / 180;
        pitch_y = degree_y * M_PI / 180;
        // yaw_z = data[j][2] * M_PI / 180;
        // euler_to_quaternion
        qx = sin(roll_x / 2) * cos(pitch_y / 2) * cos(*theta_value / 2) - cos(roll_x / 2) * sin(pitch_y / 2) * sin(*theta_value / 2);
        qy = cos(roll_x / 2) * sin(pitch_y / 2) * cos(*theta_value / 2) + sin(roll_x / 2) * cos(pitch_y / 2) * sin(*theta_value / 2);
        qz = cos(roll_x / 2) * cos(pitch_y / 2) * sin(*theta_value / 2) - sin(roll_x / 2) * sin(pitch_y / 2) * cos(*theta_value / 2);
        qw = cos(roll_x / 2) * cos(pitch_y / 2) * cos(*theta_value / 2) + sin(roll_x / 2) * sin(pitch_y / 2) * sin(*theta_value / 2);

        goal.target_pose.pose.orientation.x = qx; 
        goal.target_pose.pose.orientation.y = qy; 
        goal.target_pose.pose.orientation.z = qz; 
        goal.target_pose.pose.orientation.w = qw; 

        // ROS_INFO("Sending goal");
        ac.sendGoal(goal);
        ac.waitForResult();

        if (ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
            ROS_INFO("reach goal [%d], and delay [%f]", i + 1, *sec_value);
        else
            ROS_INFO("failed to move");

        ros::Duration(*sec_value).sleep(); // sleep for a few sec
        // // back to charge
        // std_srvs::Empty srv_;
        // auto_charge_client.call(srv_);
    }

    ros::spin();
    return 0;
}
