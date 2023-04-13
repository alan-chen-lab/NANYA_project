// 得到bettery的資訊的client，例如:battery<10%，傳送request
#include "ros/ros.h"
#include <std_srvs/Empty.h>
#include <cstdlib>

#include <sensor_msgs/BatteryState.h>

// #include <simple_navigation_goals/auto_info.h>

float percentage_ = 1.0;
double percentage_threshold_client; // ros param
// bool info_;

void batteryCallback(const sensor_msgs::BatteryState::ConstPtr &BatteryDeviceState)
{
    percentage_ = BatteryDeviceState->percentage;
}

// void info_callback(const simple_navigation_goals::auto_info &auto_charge_info)
// {
//     info_ = auto_charge_info.info;
// }

int main(int argc, char **argv)
{
    ros::init(argc, argv, "auto_charge_client");
    ros::NodeHandle n;

    percentage_threshold_client = 1.0; // for roslaunch param
    ros::param::get("~percentage_threshold_client", percentage_threshold_client);

    ros::Subscriber battery_info_sub = n.subscribe("/battery_device_status", 100, batteryCallback); // 訂閱/battery資訊，topic:/battery
    ros::ServiceClient client = n.serviceClient<std_srvs::Empty>("auto_charge_server");             // 創一個client，請求名叫auto_charge_server的server，消息類型要改(auto_charge_service::auto_charge_srv)
    std_srvs::Empty server;                                                                         //定義service msg

    // ros::Subscriber autocharge_info_sub = n.subscribe("/autocharge_info_pub", 1, info_callback);

    while (ros::ok())
    {
        //判斷電量
        if (percentage_ <= percentage_threshold_client)
        {
            ROS_INFO("call server");
            client.call(server);
            // return 0;
        }
        ros::spinOnce();
    }
    return 0;
}
