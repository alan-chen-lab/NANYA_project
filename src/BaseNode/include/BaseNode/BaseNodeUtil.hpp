/*
 *******************************************************************************
 * File Name    : DVPT_DeviceProtocol.h
 * Description  : The header file of DVPT_DeviceProtocol.
 * Revision     : 0.0.1
 * Author       : RainZhu
 * Note         : DVPT means the component name of DVPT_DeviceProtocol.
 *
 * Copyright 2021 New Kinpo Group
 * All Rights Reserved
 *******************************************************************************
 */
#ifndef BASE_NODE_UTIL_H
#define BASE_NODE_UTIL_H

#define SPECIAL_MODE_WHEEL_RELEASE 1
#define SPECIAL_MODE_WHEEL_BRAKE 2
#define SPECIAL_MODE_GOTO_DOCK 3
#define SPECIAL_MODE_LEAVE_FROM_DOCK 4

/* Includes ------------------------------------------------------------------*/
#include <stdint.h>
#include <ros/ros.h>
#include "iostream"

#include <serial/serial.h>
#include "BaseNode/DeviceService.hpp"

//ROS
#include <std_msgs/UInt8MultiArray.h>
#include <tf/transform_broadcaster.h>
#include <nav_msgs/Odometry.h>

//msg   
#include <std_msgs/String.h>
#include <std_msgs/Float32.h>
#include <std_msgs/UInt8MultiArray.h>
#include <std_msgs/Bool.h>
#include <std_msgs/UInt8.h>
#include <std_msgs/Int32.h>
#include <geometry_msgs/Twist.h>
#include <sensor_msgs/BatteryState.h>
#include <sensor_msgs/Range.h>
#include <std_srvs/SetBool.h>
#include <std_srvs/Empty.h>
#include <BaseNode/RealSpeedData.h>
#include <BaseNode/AutoDockStatus.h>
#include <BaseNode/CurrentController.h>
#include <BaseNode/FlagReportStamped.h>
#include <BaseNode/IrDockReport.h>
#include <BaseNode/PIC32EmergencySetting.h>
#include <BaseNode/PingDataStamped.h>
#include <BaseNode/SonicReport.h>
#include <BaseNode/MagnetReport.h>

#include <BaseNode/RFIDReport.h>
#include <BaseNode/RGBLEDControl.h>
#include <BaseNode/IMUReport.h>
#include <BaseNode/DigitLEDControl.h>
#include <BaseNode/LEDReport.h>
#include <BaseNode/GetObstacleDistance.h>
#include <BaseNode/SetObstacleDistance.h>



/* Type-Defines --------------------------------------------------------------*/
class BaseNodeUtil
{
    public:
        DeviceService Device;
        BaseNode::AutoDockStatus gAutoDockStatus;
        geometry_msgs::Twist gCurrentSpeed;
        sensor_msgs::BatteryState gBatteryStatus;
        sensor_msgs::Range gSonar[7];
        BaseNode::CurrentController gCurrentController;
        std_msgs::UInt8 gDockError;
        std_msgs::Bool gDockUp;
        BaseNode::FlagReportStamped gFlagReportStamped;
        BaseNode::IrDockReport gIrDockReport;
        BaseNode::PIC32EmergencySetting gPIC32EmergencySetting;
        BaseNode::PingDataStamped gPingDataStamped;
        BaseNode::SonicReport gSonicReport;
        BaseNode::MagnetReport gMagnetReport;
        BaseNode::RFIDReport gRFIDReport;
        BaseNode::IMUReport gIMUReport;

        geometry_msgs::Twist gAppSetVel;
        geometry_msgs::Twist gAutoDockSetVel;
        geometry_msgs::Twist gJoystickSetVel;
        geometry_msgs::Twist gNaviSetVel;
        std_msgs::Bool gAppStopCMD;
        std_msgs::Bool gAutoDockStopCMD;
        std_msgs::Bool gJoystickStopCMD;
        std_msgs::Bool gNaviStopCMD;
        std_msgs::Bool gPICAutodock;

        BaseNode::RGBLEDControl gRGBLEDControl ;
        BaseNode::DigitLEDControl gDigitLEDControl;

        bool Initial();
        bool SetFirstPeriordallyReponse();
        bool UpDataandPublish();
    private:
        //ROS Varible
        ros::NodeHandle _n;

        //Topic Publisher
        ros::Publisher auto_dock_status_pub;
        ros::Publisher battery_pub;
        ros::Publisher cmd_loop_pub;
        ros::Publisher current_controller_pub;
        ros::Publisher dock_error_pub;
        ros::Publisher dock_up_pub;
        ros::Publisher flag_report_pub;
        ros::Publisher ir_dock_report_pub;
        ros::Publisher odom_pub;
        ros::Publisher pic32_emergenecy_setting_pub;
        ros::Publisher ping_data_pub;
        ros::Publisher sonar_0_pub;
        ros::Publisher sonar_1_pub;
        ros::Publisher sonar_2_pub;
        ros::Publisher sonar_3_pub;
        ros::Publisher sonar_4_pub;
        ros::Publisher sonar_5_pub;
        ros::Publisher sonar_6_pub;
        ros::Publisher sonic_report_pub;
        ros::Publisher magnet_report_pub;
        ros::Publisher led_report_pub;
        ros::Publisher RFID_report_pub;
        ros::Publisher IMU_report_pub;
        //ros::Publisher real_speed_data_pub;

        //Subscrible
        ros::Subscriber app_set_velocity_sub;
        ros::Subscriber autodock_set_velocity_sub;
        ros::Subscriber joystick_set_velocity_sub;
        ros::Subscriber navigation_set_velocity_sub;
        ros::Subscriber app_stop_command_sub;
        ros::Subscriber autodock_stop_command_sub;
        ros::Subscriber joystick_stop_command_sub;
        ros::Subscriber navigation_stop_command_sub;
        ros::Subscriber pic_autodock_sub;
        ros::Subscriber rgb_led_command_sub;
        ros::Subscriber digit_led_command_sub;
        ros::Subscriber set_velocity_sub;
        ros::Subscriber bettery_device_state_sub;

        //Service
        ros::ServiceServer base_flag_disable_srv;
        ros::ServiceServer base_IMU_disable_srv;
        ros::ServiceServer base_ir_srv;
        ros::ServiceServer base_ultrasonic_srv;
        ros::ServiceServer enable_wheel_brake_srv;
        ros::ServiceServer enable_wheel_release_srv;
        ros::ServiceServer base_get_LED_srv;
        ros::ServiceServer base_mag_sensor_disable_srv;
        ros::ServiceServer base_RFID_sensor_disable_srv;
        ros::ServiceServer base_set_obstacle_distance_srv;
        ros::ServiceServer base_get_obstacle_distance_srv; 

        ros::Timer RespTimer;
        ros::Timer ControlBaseTimer;
        ros::Timer GetInfoTimer;
        ros::Time tCurrentTime;
        ros::Time tLastTime;

        //Base Control Varible
        uint8_t ControlBasePriority;
        bool AppStopCMD;
        bool AutoDockStopCMD;
        bool JoyStopCMD;
        bool NaviStopCMD;
        float fXTransform;
        float fYTransform;
        float fTHTransform;

        void GetAppSetVelocity(const geometry_msgs::Twist& Speed);
        void GetAutoDockSetVelocity(const geometry_msgs::Twist &Speed);
        void GetJoystickSetVelocity(const geometry_msgs::Twist &Speed);
        void GetNaviSetVelocity(const geometry_msgs::Twist &Speed);
        void GetSetVelocity(const geometry_msgs::Twist &Speed);
        void GetAppStopCMD(const std_msgs::Bool &msg);
        void GetAutoDockStopCMD(const std_msgs::Bool &msg);
        void GetJoystickStopCMD(const std_msgs::Bool &msg);
        void GetNaviStopCMD(const std_msgs::Bool &msg);
        void GetAutoDock(const std_msgs::Bool &msg);
        void GetRGBLEDCommand(const BaseNode::RGBLEDControl &RGBLEDControl);
        void GetDigitLEDCommand(const BaseNode::DigitLEDControl &DigitLEDControl);
        void GetBatteryState(const sensor_msgs::BatteryState& BatteryDeviceState);

        //Service
        bool SetFlagDis(std_srvs::SetBool::Request &req, std_srvs::SetBool::Response &rep);
        bool SetBaseIMUDis(std_srvs::SetBool::Request &req, std_srvs::SetBool::Response &rep);
        bool SetIRDis(std_srvs::SetBool::Request &req, std_srvs::SetBool::Response &rep);
        bool SetUSDis(std_srvs::SetBool::Request &req, std_srvs::SetBool::Response &rep);
        bool EnableWheelBrake(std_srvs::Empty::Request &req, std_srvs::Empty::Response &rep);
        bool EnableWheelRelease(std_srvs::Empty::Request &req, std_srvs::Empty::Response &rep);
        bool GetLEDStatus(BaseNode::LEDReport::Request &req, BaseNode::LEDReport::Response &rep);
        bool SetObstacleDistance(BaseNode::SetObstacleDistance::Request &req, BaseNode::SetObstacleDistance::Response &rep);
        bool GetObstacleDistance(BaseNode::GetObstacleDistance::Request &req, BaseNode::GetObstacleDistance::Response &rep);
        
        //bool SetMagDis(std_srvs::SetBool::Request &req, std_srvs::SetBool::Response &rep);
        //bool BaseNodeUtil::SetRFIDDis(std_srvs::SetBool::Request &req, std_srvs::SetBool::Response &rep);
        

        void ControlBaseSpeed(geometry_msgs::Twist Speed);
        //void RecvBufCallback(const ros::TimerEvent& event);
        void ControlBaseCallback(const ros::TimerEvent& event);
        void GetBatteryCallback(const ros::TimerEvent& event);

        //Publish;
        void PublishPingData(); //Checked
        void PublishDockUp(); //Checked
        void PublishFlagReport(); //Checked
        void PublishSonicSensor(); //Checked
        void PublishIRReport(); //Checked
        void PublishSonicReport(); //Checked
        void PublishMagnetReport(); //Checked
        void PublishRFIDReport(); //Checked
        void PublishIMUReport();
        void PublishOdom();

        
};

/* Declaration of Exported Variables -----------------------------------------*/



/* Declaration of Exported Functions -----------------------------------------*/




#endif /* BASE_NODE_UTIL_H */
