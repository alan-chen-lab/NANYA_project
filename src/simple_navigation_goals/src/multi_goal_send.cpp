// for multi goal
#include <ros/ros.h>
#include <math.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
#include <ros/time.h>
#include <ros/duration.h>

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

int main(int argc, char **argv)
{
    ros::init(argc, argv, "multi_send_goal");

    // tell the action client that we want to spin a thread by default
    MoveBaseClient ac("move_base", true);

    // wait for the action server to come up
    while (!ac.waitForServer(ros::Duration(5.0)))
    {
        ROS_INFO("Waiting for the move_base action server to come up");
    }

    int num;
    float goal_x, goal_y, sec;
    float data[num][4] = {}; // [x, y, theta, sec]
    float degree_x, degree_y, dergee_z, roll_x, pitch_y, yaw_z, qx, qy, qz, qw;
    degree_x = 0;
    degree_y = 0;

    move_base_msgs::MoveBaseGoal goal;

    // we'll send a goal to the robot to move 1 meter forward
    goal.target_pose.header.frame_id = "map"; // base_link, map
    goal.target_pose.header.stamp = ros::Time::now();

    ROS_INFO("Planing path point:");
    scanf("%d", &num);

    for (int i = 0; i < num; i++) // save multi point
    {
        ROS_INFO("goal_x:");
        scanf("%f", &goal_x);
        ROS_INFO("goal_y:");
        scanf("%f", &goal_y);

        ROS_INFO("dergee:");
        scanf("%f", &dergee_z);

        ROS_INFO("want to stay ? sec:");
        scanf("%f", &sec);
        ROS_INFO("------------------");

        data[i][0] = goal_x;
        data[i][1] = goal_y;
        data[i][2] = dergee_z;
        data[i][3] = sec;
    }

    for (int j = 0; j < num; j++) // send multi point
    {
        goal.target_pose.pose.position.x = data[j][0]; // amcl_pose(m)
        goal.target_pose.pose.position.y = data[j][1];

        // 0, 0, -90
        //  degree to euler angle
        roll_x = degree_x * M_PI / 180;
        pitch_y = degree_y * M_PI / 180;
        yaw_z = data[j][2] * M_PI / 180;
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
            ROS_INFO("reach destination [%d]", j + 1);
        else
            ROS_INFO("failed to move");

        ros::Duration(data[j][3]).sleep(); // sleep for a few sec
    }

    return 0;
}
