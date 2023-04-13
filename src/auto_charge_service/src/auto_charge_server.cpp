// 包含send goal的actionlib client，以及接收來自/battery資訊的request的server
#include "ros/ros.h"
#include <string.h>
#include <iostream>
#include <cstdlib>
#include <math.h>
#include <std_srvs/Empty.h> //for service msg

#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h> // action client

#include "auto_charge_service/aurco_info.h" // for aurco info msg

#include <geometry_msgs/Twist.h> // for version2 step3
#include <ros/time.h>
#include <ros/duration.h>

#include <sensor_msgs/BatteryState.h> // for batteyr info

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient; //定義ActionClient為 MoveBaseClient
double msg_x, msg_y, msg_z, temp = 0;
float msg_roll, msg_pitch, msg_yaw;
bool msg_get_aruco, msg_not_get_aruco;

ros::Publisher set_velocity_pub;
ros::Publisher pub_msg;
ros::Timer joystick_timer;

double BATTERY_Threshold_Server; // BATTERY_Threshold
// double set_x, set_y, set_rotation; // set auto_charge point

// callback battery info
float percentage_ = 1.0;
void batteryCallback(const sensor_msgs::BatteryState::ConstPtr &BatteryDeviceState)
{
    percentage_ = BatteryDeviceState->percentage;
    // ROS_INFO("battery_percentage: %f", percentage_);
}

bool send_goal_base_link(double x, double y, float degree_z)
{
    // tell the action client that we want to spin a thread by default
    MoveBaseClient ac("move_base", true);
    // wait for the action server to come up
    while (!ac.waitForServer(ros::Duration(5.0)))
    {
        ROS_INFO("Waiting for the move_base action server to come up");
    }

    // float goal_x, goal_y;
    move_base_msgs::MoveBaseGoal goal;

    // we'll send a goal to the robot to move 1 meter forward
    goal.target_pose.header.frame_id = "base_link"; // base_link, map
    goal.target_pose.header.stamp = ros::Time::now();

    goal.target_pose.pose.position.x = x; // amcl_pose(m)
    goal.target_pose.pose.position.y = y;

    // 0, 0, -90
    //  degree to euler angle
    float roll_x, pitch_y, yaw_z, degree_x = 0, degree_y = 0, qx, qy, qz, qw;
    // degree_x = 0;
    // degree_y = 0;
    // dergee_z = -90;
    roll_x = degree_x * M_PI / 180;
    pitch_y = degree_y * M_PI / 180;
    yaw_z = degree_z * M_PI / 180;
    // euler_to_quaternion
    qx = sin(roll_x / 2) * cos(pitch_y / 2) * cos(yaw_z / 2) - cos(roll_x / 2) * sin(pitch_y / 2) * sin(yaw_z / 2);
    qy = cos(roll_x / 2) * sin(pitch_y / 2) * cos(yaw_z / 2) + sin(roll_x / 2) * cos(pitch_y / 2) * sin(yaw_z / 2);
    qz = cos(roll_x / 2) * cos(pitch_y / 2) * sin(yaw_z / 2) - sin(roll_x / 2) * sin(pitch_y / 2) * cos(yaw_z / 2);
    qw = cos(roll_x / 2) * cos(pitch_y / 2) * cos(yaw_z / 2) + sin(roll_x / 2) * sin(pitch_y / 2) * sin(yaw_z / 2);

    goal.target_pose.pose.orientation.x = qx; // 0;
    goal.target_pose.pose.orientation.y = qy; // 0;
    goal.target_pose.pose.orientation.z = qz; //-0.7071068;
    goal.target_pose.pose.orientation.w = qw; // 0.7071068;
    // ROS_INFO("Sending goal");
    ac.sendGoal(goal);
    ac.waitForResult();

    if (ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
        ROS_INFO("done!");
    else
        ROS_INFO("failed to move");
}

bool send_goal(double x, double y, float degree_z)
{
    // tell the action client that we want to spin a thread by default
    MoveBaseClient ac("move_base", true);
    // wait for the action server to come up
    while (!ac.waitForServer(ros::Duration(5.0)))
    {
        ROS_INFO("Waiting for the move_base action server to come up");
    }

    // float goal_x, goal_y;
    move_base_msgs::MoveBaseGoal goal;

    // we'll send a goal to the robot to move 1 meter forward
    goal.target_pose.header.frame_id = "map"; // base_link, map
    goal.target_pose.header.stamp = ros::Time::now();

    goal.target_pose.pose.position.x = x; // amcl_pose(m)
    goal.target_pose.pose.position.y = y;

    // 0, 0, -90
    //  degree to euler angle
    float roll_x, pitch_y, yaw_z, degree_x = 0, degree_y = 0, qx, qy, qz, qw;
    // degree_x = 0;
    // degree_y = 0;
    // dergee_z = -90;
    roll_x = degree_x * M_PI / 180;
    pitch_y = degree_y * M_PI / 180;
    yaw_z = degree_z * M_PI / 180;
    // euler_to_quaternion
    qx = sin(roll_x / 2) * cos(pitch_y / 2) * cos(yaw_z / 2) - cos(roll_x / 2) * sin(pitch_y / 2) * sin(yaw_z / 2);
    qy = cos(roll_x / 2) * sin(pitch_y / 2) * cos(yaw_z / 2) + sin(roll_x / 2) * cos(pitch_y / 2) * sin(yaw_z / 2);
    qz = cos(roll_x / 2) * cos(pitch_y / 2) * sin(yaw_z / 2) - sin(roll_x / 2) * sin(pitch_y / 2) * cos(yaw_z / 2);
    qw = cos(roll_x / 2) * cos(pitch_y / 2) * cos(yaw_z / 2) + sin(roll_x / 2) * sin(pitch_y / 2) * sin(yaw_z / 2);

    goal.target_pose.pose.orientation.x = qx; // 0;
    goal.target_pose.pose.orientation.y = qy; // 0;
    goal.target_pose.pose.orientation.z = qz; //-0.7071068;
    goal.target_pose.pose.orientation.w = qw; // 0.7071068;
    // ROS_INFO("Sending goal");
    ac.sendGoal(goal);
    ac.waitForResult();

    if (ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
        ROS_INFO("reach destination!");
    else
        ROS_INFO("failed to move");
}

void joystickTimerCallback(const ros::TimerEvent &)
{
    if (temp > 0)
    {
        // printf("get joycmd \n");
        geometry_msgs::Twist geControlSpeed;
        geControlSpeed.linear.x = -0.05;
        geControlSpeed.angular.z = 0;
        set_velocity_pub.publish(geControlSpeed);
        // ROS_INFO("done!");
    }
}

void goTime(double sec)
{
    // ros::AsyncSpinner spinner_test(3); // 多執行續
    // spinner_test.start();              // 多執行續start

    while (set_velocity_pub.getNumSubscribers() == 0) // 如果沒收到publish, wait。
    {
        printf("wait for joycmd\n");
    }

    joystick_timer.start(); // 定時器start
    // printf("timer start\n");
    sleep(sec); // duration 3s
    joystick_timer.stop();
    // printf("timer stop\n");
    // spinner_test.stop(); // 多執行續end
    // ros::waitForShutdown();
}

// aruco info callback
void MarkerCallback(const auto_charge_service::aurco_info::ConstPtr &msg)
{
    // ROS_INFO("get msg from aruco\n");
    msg_x = msg->x;
    msg_y = msg->y;
    msg_z = msg->z;
    msg_roll = msg->roll;
    msg_pitch = msg->pitch;
    msg_yaw = msg->yaw;

    msg_get_aruco = msg->get_aruco;         // true
    msg_not_get_aruco = msg->not_get_aruco; // false
    // if(msg_get_aruco == true)
    // {
    //     ROS_INFO("get_aruco");
    // }
    // else if (msg_not_get_aruco == false)
    // {
    //     ROS_INFO("not_get_aruco");
    // }
    // ROS_INFO("position(x,y,z) is [%lf , %lf, %lf]", msg_x, msg_y, msg_z);
    // ROS_INFO("rotation(roll,pitch,yaw) is [%f , %f, %f]", msg_roll, msg_pitch, msg_yaw);
}

bool gocharge(std_srvs::Empty::Request &req, std_srvs::Empty::Response &res) //定義request(client),response(service)
{
    ROS_INFO("Implement auto-charge system");
    double x, y;
    float degree_z;
    x = 5.5;
    y = 0.0;
    degree_z = 0.0;
    ROS_INFO("goal_x: %lf", x);
    ROS_INFO("goal_y: %lf", y);
    ROS_INFO("rotation_z(degree): %f", degree_z);

    send_goal(x, y, degree_z); // 送目標點使機器人到點附近
    // send_goal(set_x, set_y, set_rotation); // 送目標點使機器人到點附近

    //判斷aruco
    while (msg_get_aruco == false)
    {
        ROS_INFO("camera doesn't detect aruco");
        ROS_INFO("need to adjust rotation(degree):");
        // scanf("%f", &dergee_z_);

        double zero_x = 0, zero_y = 0;
        float dergee_z_ = -60;
        send_goal_base_link(zero_x, zero_y, dergee_z_);
        if (msg_get_aruco == true)
        {
            ROS_INFO("get aruco!");
        }
        else
        {
            ROS_INFO("still need to adjust");
            // dergee_z_ = dergee_z_ - 40;
        }
        ros::spinOnce();
    }
    // when detecting the aruco
    double revise_x = 0, revise_y = 0, after_revise_x = 0, after_revise_y = 0, back_degree = 0;
    ROS_INFO("\n");
    ROS_INFO("get_aruco!, start robot correct position");
    // ROS_INFO("revise_x:");
    // scanf("%f", &revise_x);

    ROS_INFO("position(x,y,z) is [%lf , %lf, %lf]", msg_x, msg_y, msg_z);
    ROS_INFO("rotation(roll,pitch,yaw) is [%f , %f, %f]", msg_roll, msg_pitch, msg_yaw);

    float step1_msg_pitch;
    double step2_msg_x, step1_msg_z;
    step1_msg_pitch = msg_pitch; // 記錄當下camera資訊
    step2_msg_x = msg_x;
    step1_msg_z = msg_z; // 記錄當下camera資訊

    // version 2 兩段式修正
    // step 1 : 兩充電口彼此互相垂直
    float rotation_step1;
    if (step1_msg_pitch < 0){
        rotation_step1 = -(90 - abs(step1_msg_pitch) + 5); // abs, float
        ROS_INFO("step 1 : rotation, %f degree", rotation_step1);
        send_goal_base_link(revise_x, revise_y, rotation_step1);
    }
    else if (step1_msg_pitch > 0){
        rotation_step1 = (90 - abs(step1_msg_pitch) + 10);
        ROS_INFO("step 1 : rotation, %f degree", rotation_step1);
        send_goal_base_link(revise_x, revise_y, rotation_step1);
    }

    // 後退計算
    rotation_step1 = -(rotation_step1) * M_PI / 180; // degree to radians
    // 1.
    double temp_rotation_step1_sin = (double)sin(rotation_step1);
    double rotaion_sin_x = step1_msg_z * temp_rotation_step1_sin;
    // 2.
    rotaion_sin_x = rotaion_sin_x + 0.27; // 0.27(camera與base_link距離)
    // ROS_INFO("rotaion_sin_x: %1f m", rotaion_sin_x);
    // 3.
    double temp_rotation_step1_cos = (double)cos(rotation_step1);
    double rotaion_cos_x = rotaion_sin_x * temp_rotation_step1_cos;

    // step 2 : 後退msg_x(負的)距離，直到機器人中心與充電座水平置中
    ROS_INFO("step 2 : back to centered horizontally(before), %1f m", rotaion_cos_x);
    if (fabs(rotaion_cos_x) < 0.20){ 
        double rotaion_cos_x_1 = fabs(rotaion_cos_x) + 0.48; // fabs, double
        ROS_INFO("step 2 : back to centered horizontally, %1f m", rotaion_cos_x_1);
        send_goal_base_link(-(rotaion_cos_x_1), revise_y, back_degree);
    }
    else if (0.2 < fabs(rotaion_cos_x) < 0.30){
        double rotaion_cos_x_2 = fabs(rotaion_cos_x) + 0.35;
        ROS_INFO("step 2 : back to centered horizontally, %1f m", rotaion_cos_x_2);
        send_goal_base_link(-(rotaion_cos_x_2), revise_y, back_degree);
    }
    else if (fabs(rotaion_cos_x) > 0.30){
        double rotaion_cos_x_3 = fabs(rotaion_cos_x) + 0.25;
        ROS_INFO("step 2 : back to centered horizontally, %1f m", rotaion_cos_x_3);
        send_goal_base_link(-(rotaion_cos_x_3), revise_y, back_degree);
    }

    // strp 2.5 : 轉正90度
    if (step1_msg_pitch < 0){
        ROS_INFO("step 2.5.1 : rotate, +90 degree");
        send_goal_base_link(revise_x, revise_y, 100);
        ROS_INFO("step 2.5.2 : current rotatation(pitch): %f", msg_pitch);
    }
    else if (step1_msg_pitch > 0){
        ROS_INFO("step 2.5.1 : rotate, -90 degree");
        send_goal_base_link(revise_x, revise_y, -100);
        ROS_INFO("step 2.5.2 : current rotatation(pitch): %f", msg_pitch);
    }

    // adjust
    if (msg_pitch > 5){
        ROS_INFO("step 2.5.3 : rotation > 5 degree, adjust");
        send_goal_base_link(revise_x, revise_y, -(msg_pitch));
    }
    else if(msg_pitch < -5){
        ROS_INFO("step 2.5.3 : rotation > -5 degree, adjust");
        send_goal_base_link(revise_x, revise_y, msg_pitch);
    }

    // step 3 : 後退msg_z(負的)距離，至充電座
    ROS_INFO("step 3 : back to station, %lf m", msg_z);
    temp = msg_z;
    double time = msg_z / 0.06; // m/s
    goTime(time);
    ROS_INFO("done!");
    // send_goal_base_link(-(msg_z), revise_y, back_degree);

    // check_battery
    ROS_INFO("percentage~ : %f", ceil(percentage_ * 100));
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "auto_charge_server");
    ros::NodeHandle n;

    BATTERY_Threshold_Server = 1.0; // for roslaunch param
    ros::param::get("~battery_threshold_server", BATTERY_Threshold_Server);

    ros::Subscriber battery_info_sub = n.subscribe("/battery_device_status", 1, batteryCallback); // 訂閱/battery資訊，topic:/battery
    ros::ServiceServer service = n.advertiseService("auto_charge_server", gocharge);              // service name, call back function
    ros::Subscriber Marker_sub = n.subscribe("aruco_pose", 1, MarkerCallback);                 //訂閱aruco資訊，topic:aruco_pose
    set_velocity_pub = n.advertise<const geometry_msgs::Twist>("/joystick_set_velocity", 100);    // joycmd

    ros::AsyncSpinner spinner_test(2); // define多執行續
    spinner_test.start();              // 多執行續start

    // ros::AsyncSpinner spinner_test(1);                                          // define多執行續
    // spinner_test.start();                                                       // 多執行續start
    joystick_timer = n.createTimer(ros::Duration(0.01), joystickTimerCallback); // 定時器

    ros::waitForShutdown(); // spin all callback function
    spinner_test.stop();    // 多執行續end
    // ros::spin();

    return 0;
}
