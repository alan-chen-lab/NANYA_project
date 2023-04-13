/*
 *******************************************************************************
 * File Name    : BaseNode.cpp
 * Description  : This file provide main for base node.
 * Revision     : 0.0.1
 * Author       : RainZhu
 * Note         : Base Node Define.
 *
 * Copyright 2021 New Kinpo Group
 * All Rights Reserved
 *******************************************************************************
 */

/* Includes ------------------------------------------------------------------*/
#include "ros/ros.h"
#include "iostream"

#include <sstream>
#include <string>
#include <iomanip>
#include <bitset>
#include <vector>
#include "ros/timer.h"
#include "ros/timer_manager.h"

#include <string> 
#include <stdint.h>

#include "BaseNode/BaseNodeUtil.hpp"
#include "BaseNode/DeviceModel.hpp"

using namespace std;
/* Defined Constants ---------------------------------------------------------*/
#define APP_PRIORITY            4
#define JOY_PRIORITY            3
#define AUTODOCK_PRIORITY       2
#define NAVI_PRIORITY           1
#define CUSTOM_PRIORITY         0

/* Macros --------------------------------------------------------------------*/
#define PI()                    4*atan(1)


/* Type-Defines --------------------------------------------------------------*/
namespace patch
{
    template < typename T > std::string to_string( const T& n )
    {
        std::ostringstream stm ;
        stm << n ;
        return stm.str() ;
    }
}


/* Global Variables ----------------------------------------------------------*/

/* Declaration of Local Functions --------------------------------------------*/

//void ControlBaseSpeed(geometry_msgs::Twist Speed);
/* Definition of Local Functions ---------------------------------------------*/

void BaseNodeUtil::GetAppSetVelocity(const geometry_msgs::Twist& Speed)
{
    if (APP_PRIORITY >= BaseNodeUtil::ControlBasePriority && false == BaseNodeUtil::AppStopCMD) 
    {
        gCurrentController.current_controller = "App Control";
        gCurrentController.current_action = "App Control";
        gCurrentController.current_controller_priority = APP_PRIORITY;
        gCurrentController.current_action_priority = APP_PRIORITY;
        current_controller_pub.publish(gCurrentController);

        BaseNodeUtil::ControlBasePriority = APP_PRIORITY;
        BaseNodeUtil::ControlBaseSpeed(Speed);
        ControlBaseTimer.stop();
        ControlBaseTimer.start();
    }
    else
    {
        switch (BaseNodeUtil::ControlBasePriority)
        {
            case (CUSTOM_PRIORITY):
                gCurrentController.current_controller = "Custom Control";
            break;
            case (NAVI_PRIORITY):
                gCurrentController.current_controller = "Navigation Control";
            break;
            case (JOY_PRIORITY):
                gCurrentController.current_controller = "Joystick Control";
            break;
            case (AUTODOCK_PRIORITY):
                gCurrentController.current_controller = "Autodock Control";
            break;
            case (APP_PRIORITY):
                gCurrentController.current_controller = "App Control";
            break;
        }
        gCurrentController.current_action = "Control Ignore";
        gCurrentController.current_controller_priority = BaseNodeUtil::ControlBasePriority;
        gCurrentController.current_action_priority = APP_PRIORITY;
        current_controller_pub.publish(gCurrentController);
    }
}

void BaseNodeUtil::GetAutoDockSetVelocity(const geometry_msgs::Twist& Speed)
{
    if (AUTODOCK_PRIORITY >= BaseNodeUtil::ControlBasePriority && false == BaseNodeUtil::AutoDockStopCMD) 
    {
        gCurrentController.current_controller = "AutoDock Control";
        gCurrentController.current_action = "AutoDock Control";
        gCurrentController.current_controller_priority = AUTODOCK_PRIORITY;
        gCurrentController.current_action_priority = AUTODOCK_PRIORITY;
        current_controller_pub.publish(gCurrentController); 

        BaseNodeUtil::ControlBasePriority = AUTODOCK_PRIORITY;
        BaseNodeUtil::ControlBaseSpeed(Speed);
        ControlBaseTimer.stop();
        ControlBaseTimer.start();
    }
    else
    {
        switch (BaseNodeUtil::ControlBasePriority)
        {
            case (CUSTOM_PRIORITY):
                gCurrentController.current_controller = "Custom Control";
            break;
            case (NAVI_PRIORITY):
                gCurrentController.current_controller = "Navigation Control";
            break;
            case (JOY_PRIORITY):
                gCurrentController.current_controller = "Joystick Control";
            break;
            case (AUTODOCK_PRIORITY):
                gCurrentController.current_controller = "Autodock Control";
            break;
            case (APP_PRIORITY):
                gCurrentController.current_controller = "App Control";
            break;
        }
        gCurrentController.current_action = "Control Ignore";
        gCurrentController.current_controller_priority = BaseNodeUtil::ControlBasePriority;
        gCurrentController.current_action_priority = AUTODOCK_PRIORITY;
        current_controller_pub.publish(gCurrentController);
    }
}

void BaseNodeUtil::GetJoystickSetVelocity(const geometry_msgs::Twist& Speed)
{
    if (JOY_PRIORITY >= BaseNodeUtil::ControlBasePriority && false == BaseNodeUtil::JoyStopCMD) 
    {
        gCurrentController.current_controller = "Joystick Control";
        gCurrentController.current_action = "Joystick Control";
        gCurrentController.current_controller_priority = JOY_PRIORITY;
        gCurrentController.current_action_priority = JOY_PRIORITY;
        current_controller_pub.publish(gCurrentController);

        BaseNodeUtil::ControlBasePriority = JOY_PRIORITY;
        BaseNodeUtil::ControlBaseSpeed(Speed);
        ControlBaseTimer.stop();
        ControlBaseTimer.start();
    }
    else
    {
        switch (BaseNodeUtil::ControlBasePriority)
        {
            case (CUSTOM_PRIORITY):
                gCurrentController.current_controller = "Custom Control";
            break;
            case (NAVI_PRIORITY):
                gCurrentController.current_controller = "Navigation Control";
            break;
            case (JOY_PRIORITY):
                gCurrentController.current_controller = "Joystick Control";
            break;
            case (AUTODOCK_PRIORITY):
                gCurrentController.current_controller = "Autodock Control";
            break;
            case (APP_PRIORITY):
                gCurrentController.current_controller = "App Control";
            break;
        }
        gCurrentController.current_action = "Control Ignore";
        gCurrentController.current_controller_priority = BaseNodeUtil::ControlBasePriority;
        gCurrentController.current_action_priority = JOY_PRIORITY;
        current_controller_pub.publish(gCurrentController);
    }
}

void BaseNodeUtil::GetNaviSetVelocity(const geometry_msgs::Twist& Speed)
{
    if (NAVI_PRIORITY >= BaseNodeUtil::ControlBasePriority && false == BaseNodeUtil::NaviStopCMD) 
    {
        gCurrentController.current_controller = "Navigation Control";
        gCurrentController.current_action = "Navigation Control";
        gCurrentController.current_controller_priority = NAVI_PRIORITY;
        gCurrentController.current_action_priority = NAVI_PRIORITY;
        current_controller_pub.publish(gCurrentController);

        BaseNodeUtil::ControlBasePriority = NAVI_PRIORITY;

        geometry_msgs::Twist speed_cal;
        speed_cal.linear.x = Speed.linear.x * 1.5;
        speed_cal.angular.z = Speed.angular.z * 50;
        if(speed_cal.linear.x<0.05)
        {
            speed_cal.linear.x /=1.5;
            speed_cal.angular.z /=50;
        }
            
        ControlBaseSpeed(speed_cal);
        ControlBaseTimer.stop();
        ControlBaseTimer.start();
    }
    else
    {
        switch (BaseNodeUtil::ControlBasePriority)
        {
            case (CUSTOM_PRIORITY):
                gCurrentController.current_controller = "Custom Control";
            break;
            case (NAVI_PRIORITY):
                gCurrentController.current_controller = "Navigation Control";
            break;
            case (JOY_PRIORITY):
                gCurrentController.current_controller = "Joystick Control";
            break;
            case (AUTODOCK_PRIORITY):
                gCurrentController.current_controller = "Autodock Control";
            break;
            case (APP_PRIORITY):
                gCurrentController.current_controller = "App Control";
            break;
        }
        gCurrentController.current_action = "Control Ignore";
        gCurrentController.current_controller_priority = BaseNodeUtil::ControlBasePriority;
        gCurrentController.current_action_priority = NAVI_PRIORITY;
        current_controller_pub.publish(gCurrentController);
    }
}

void BaseNodeUtil::GetSetVelocity(const geometry_msgs::Twist& Speed)
{
    if (CUSTOM_PRIORITY >= BaseNodeUtil::ControlBasePriority) 
    {
        gCurrentController.current_controller = "Custom Control";
        gCurrentController.current_action = "Custom Control";
        gCurrentController.current_controller_priority = BaseNodeUtil::ControlBasePriority;
        gCurrentController.current_action_priority = CUSTOM_PRIORITY;
        current_controller_pub.publish(gCurrentController);
        BaseNodeUtil::ControlBasePriority = CUSTOM_PRIORITY;
        ControlBaseSpeed(Speed);
        ControlBaseTimer.stop();
        ControlBaseTimer.start();
    }
    else
    {
        switch (BaseNodeUtil::ControlBasePriority)
        {
            case (CUSTOM_PRIORITY):
                gCurrentController.current_controller = "Custom Control";
            break;
            case (NAVI_PRIORITY):
                gCurrentController.current_controller = "Navigation Control";
            break;
            case (JOY_PRIORITY):
                gCurrentController.current_controller = "Joystick Control";
            break;
            case (AUTODOCK_PRIORITY):
                gCurrentController.current_controller = "Autodock Control";
            break;
            case (APP_PRIORITY):
                gCurrentController.current_controller = "App Control";
            break;

        }

        gCurrentController.current_action = "Control Ignore";
        gCurrentController.current_controller_priority = BaseNodeUtil::ControlBasePriority;
        gCurrentController.current_action_priority = CUSTOM_PRIORITY;
        current_controller_pub.publish(gCurrentController);
    }
}

void BaseNodeUtil::GetAppStopCMD(const std_msgs::Bool& msg)
{
    BaseNodeUtil::AppStopCMD = msg.data;
}

void BaseNodeUtil::GetAutoDockStopCMD(const std_msgs::Bool& msg)
{
    BaseNodeUtil::AutoDockStopCMD = msg.data;
}

void BaseNodeUtil::GetJoystickStopCMD(const std_msgs::Bool& msg)
{
    BaseNodeUtil::JoyStopCMD = msg.data;
}

void BaseNodeUtil::GetNaviStopCMD(const std_msgs::Bool& msg)
{
    BaseNodeUtil::NaviStopCMD = msg.data;
}

void BaseNodeUtil::GetAutoDock(const std_msgs::Bool& msg)
{
    if (true == msg.data)
    {
        bool a = Device.MOTR_SetMotorSpec(SPECIAL_MODE_GOTO_DOCK);
    }
}

void BaseNodeUtil::GetRGBLEDCommand(const BaseNode::RGBLEDControl& RGBLEDControl)
{
    uint8_t u8StartRedColor = RGBLEDControl.start_red;
    uint8_t u8StartGreenColor = RGBLEDControl.start_green;
    uint8_t u8StartBlueColor = RGBLEDControl.start_blue;
    uint8_t u8EndRedColor = RGBLEDControl.end_red;
    uint8_t u8EndGreenColor = RGBLEDControl.end_green;
    uint8_t u8EndBlueColor = RGBLEDControl.end_blue;
    uint8_t u8TransformTime = (uint8_t)(RGBLEDControl.transform_time * 10);
    uint8_t u8RunTime = (uint8_t)(RGBLEDControl.run_time*2);
    bool a = Device.SetRGBLED(u8StartRedColor, u8StartGreenColor, u8StartBlueColor, u8EndRedColor, u8EndGreenColor,u8EndBlueColor, u8TransformTime,u8RunTime);
}

void BaseNodeUtil::GetDigitLEDCommand(const BaseNode::DigitLEDControl& DigitLEDControl)
{   
    uint8_t u8LeftDigLED, u8RightDigLED;
    if (DigitLEDControl.left_dig_led == true)
        u8LeftDigLED = 0xff;
    else
        u8LeftDigLED = 0;

    if (DigitLEDControl.right_dig_led == true)
        u8RightDigLED = 0xff;
    else
        u8RightDigLED = 0;    
    uint8_t u8LeftRunTime = (uint8_t)(DigitLEDControl.left_run_time*2);
    uint8_t u8RRightunTime = (uint8_t)(DigitLEDControl.right_run_time*2);
    bool a = Device.SetDigitalLED(u8LeftDigLED, u8RightDigLED, u8LeftRunTime, u8RRightunTime);
}

void BaseNodeUtil::GetBatteryState(const sensor_msgs::BatteryState& BatteryDeviceState)
{   
    sensor_msgs::BatteryState BatteryInfo = BatteryDeviceState;
    BatteryInfo.header.stamp = ros::Time::now();
    battery_pub.publish(BatteryInfo);
}

//Service
bool BaseNodeUtil::SetFlagDis(std_srvs::SetBool::Request &req, std_srvs::SetBool::Response &rep)
{
    if (req.data == true)
    {
        Device.gReportFlag.u8WheelReport = 0x00;
        rep.message = "Set Stop Btn Report Stop";
    }
    else
    {
        Device.gReportFlag.u8WheelReport = 0x82;
        rep.message = "Set Stop Btn Report Start";
    }

    Device.GetDataPeriodically(Device.gReportFlag.u8WheelReport, Device.gReportFlag.u8ChargeReport, Device.gReportFlag.u8FlagReport, Device.gReportFlag.u8IRReport, Device.gReportFlag.u8IMUReport, Device.gReportFlag.u8USReport, 0x00, 0x00);
    while(Device.WaitforResp(GET_DATA_PERIODICALLY));
    rep.success = true;
    return true;
}

bool BaseNodeUtil::SetBaseIMUDis(std_srvs::SetBool::Request &req, std_srvs::SetBool::Response &rep)
{
     if (req.data == true)
    {
        Device.gReportFlag.u8IMUReport = 0x00;
        rep.message = "Set IMU Report Stop";
    }
    else
    {
        Device.gReportFlag.u8IMUReport = 0x82;
        rep.message = "Set IMU Report Start";
    }

    Device.GetDataPeriodically(Device.gReportFlag.u8WheelReport, Device.gReportFlag.u8ChargeReport, Device.gReportFlag.u8FlagReport, Device.gReportFlag.u8IRReport, Device.gReportFlag.u8IMUReport, Device.gReportFlag.u8USReport, 0x00, 0x00);
    while(Device.WaitforResp(GET_DATA_PERIODICALLY));
    rep.success = true;
    return true;
}

bool BaseNodeUtil::SetIRDis(std_srvs::SetBool::Request &req, std_srvs::SetBool::Response &rep)
{
    if (req.data == true)
    {
        Device.gReportFlag.u8IRReport = 0x00;
        rep.message = "Set IR Report Stop";
    }
    else
    {
        Device.gReportFlag.u8IRReport = 0x82;
        rep.message = "Set IR Report Start";
    }

    Device.GetDataPeriodically(Device.gReportFlag.u8WheelReport, Device.gReportFlag.u8ChargeReport, Device.gReportFlag.u8FlagReport, Device.gReportFlag.u8IRReport, Device.gReportFlag.u8IMUReport, Device.gReportFlag.u8USReport, 0x00, 0x00);
    while(Device.WaitforResp(GET_DATA_PERIODICALLY));
    rep.success = true;
    return true;
}

bool BaseNodeUtil::SetUSDis(std_srvs::SetBool::Request &req, std_srvs::SetBool::Response &rep)
{
    if (req.data == true)
    {
        Device.gReportFlag.u8USReport = 0x00;
        rep.message = "Set Ultrasonic Sonsor Report Stop";
    }
    else
    {
        Device.gReportFlag.u8USReport = 0x82;
        rep.message = "Set Ultrasonic Sonsor Report Start";
    }
    Device.GetDataPeriodically(Device.gReportFlag.u8WheelReport, Device.gReportFlag.u8ChargeReport, Device.gReportFlag.u8FlagReport, Device.gReportFlag.u8IRReport, Device.gReportFlag.u8IMUReport, Device.gReportFlag.u8USReport, 0x00, 0x00);
    while(Device.WaitforResp(GET_DATA_PERIODICALLY));
    rep.success = true;
    return true;

}

bool BaseNodeUtil::EnableWheelBrake(std_srvs::Empty::Request &req, std_srvs::Empty::Response &rep)
{
    bool bSetSuccess = Device.MOTR_SetMotorSpec(SPECIAL_MODE_WHEEL_BRAKE);
    while(Device.WaitforResp(SET_WHEEL_BY_SPECIAL_MODE));
    return bSetSuccess;
}

bool BaseNodeUtil::EnableWheelRelease(std_srvs::Empty::Request &req, std_srvs::Empty::Response &rep)
{
    bool bSetSuccess = Device.MOTR_SetMotorSpec(SPECIAL_MODE_WHEEL_RELEASE);
    while(Device.WaitforResp(SET_WHEEL_BY_SPECIAL_MODE));
    return bSetSuccess;
}

bool BaseNodeUtil::GetLEDStatus(BaseNode::LEDReport::Request &req, BaseNode::LEDReport::Response &rep)
{
    if (req.get_led == true)
    {
        Device.GetTwoLEDStatus(0x03);
        //WaitRecv
	//std::cout<< "0" <<std::endl;
        while (Device.WaitforResp(GET_LED_STATUS));       
	//std::cout<< "1" <<std::endl; 
        while (Device.WaitforResp(GET_LED_STATUS));
	//std::cout<< "2" <<std::endl;
        //std::cout<< "RGB is " << Device.Model.gDeviceStatus.au8RGBLEDRed << "," << Device.Model.gDeviceStatus.au8RGBLEDGreen <<"," << Device.Model.gDeviceStatus.au8RGBLEDBlue <<std::endl;
    
    }
    rep.red_led = Device.Model.gDeviceStatus.au8RGBLEDRed;
    rep.green_led = Device.Model.gDeviceStatus.au8RGBLEDGreen;
    rep.blue_led = Device.Model.gDeviceStatus.au8RGBLEDBlue;
    rep.left_dig_led = (bool)Device.Model.gDeviceStatus.au8DigitalLED0;
    rep.right_dig_led = (bool)Device.Model.gDeviceStatus.au8DigitalLED1;
    return true;
}

// bool BaseNodeUtil::SetMagDis(std_srvs::SetBool::Request &req, std_srvs::SetBool::Response &rep)
// {
//     if (req.data == true)
//     {
//         Device.gReportFlag.u8MSReport = 0x00;
//         rep.message = "Set Magnetic Sonsor Report Stop";
//     }
//     else
//     {
//         Device.gReportFlag.u8MSReport = 0x81;
//         rep.message = "Set Magnetic Sonsor Report Start";
//     }
//     // DVST_GetDataPeriodically(gu8WheelReport, gu8ChargeReport, gu8FlagReport, gu8IRReport, gu8IMUReport, gu8USReport, gu8RFIDReport, gu8MSReport);
//     // rep.success = gu8MSReport;
//     // return true;
// }

// bool BaseNodeUtil::SetRFIDDis(std_srvs::SetBool::Request &req, std_srvs::SetBool::Response &rep)
// {
//     if (req.data == true)
//     {
//         Device.gReportFlag.u8RFIDReport = 0x00;
//         rep.message = "Set RFID Sonsor Report Stop";
//     }
//     else
//     {
//         Device.gReportFlag.u8RFIDReport = 0x81;
//         rep.message = "Set RFID Sonsor Report Start";
//     }
//
//     // DVST_GetDataPeriodically(gu8WheelReport, gu8ChargeReport, gu8FlagReport, gu8IRReport, gu8IMUReport, gu8USReport, gu8RFIDReport, gu8MSReport);
//     // rep.success = gu8RFIDReport;
//     // return true;
// }

bool BaseNodeUtil::SetObstacleDistance(BaseNode::SetObstacleDistance::Request &req, BaseNode::SetObstacleDistance::Response &rep)
{
    bool bSetSuccess = Device.SetObsDis(req.USDis0,req.USDis1,req.USDis2,req.USDis3,req.USDis4,req.USDis5,req.USDis6);
    while(Device.WaitforResp(SET_OBSTACLE_DISTANCE));
    rep.Success = true;
    return bSetSuccess;
}

bool BaseNodeUtil::GetObstacleDistance(BaseNode::GetObstacleDistance::Request &req, BaseNode::GetObstacleDistance::Response &rep)
{
    bool bSetSuccess = Device.GetObsDis();
    while(Device.WaitforResp(GET_OBSTACLE_DISTANCE));
    rep.USDis0 = Device.Model.gDeviceStatus.au8ObstacleDistance[0];
    rep.USDis1 = Device.Model.gDeviceStatus.au8ObstacleDistance[1];
    rep.USDis2 = Device.Model.gDeviceStatus.au8ObstacleDistance[2];
    rep.USDis3 = Device.Model.gDeviceStatus.au8ObstacleDistance[3];
    rep.USDis4 = Device.Model.gDeviceStatus.au8ObstacleDistance[4];
    rep.USDis5 = Device.Model.gDeviceStatus.au8ObstacleDistance[5];
    rep.USDis6 = Device.Model.gDeviceStatus.au8ObstacleDistance[6];
//std::cout<<"GET"<<std::endl;
    return bSetSuccess;
}

void BaseNodeUtil::ControlBaseSpeed(geometry_msgs::Twist Speed)
{
    cmd_loop_pub.publish(Speed);
    int8_t s8LeftSpeedPrecent, s8RightSpeedPrecent;
    uint8_t u8Time = 12; //unit:50ms
    float fLinearSpeed = Speed.linear.x;
    float fAngularSpeed = Speed.angular.z*PI()/180.0;
    float fLeftSpeed, fRightSpeed;
    float fWheelBase = 0.5187; //unit:m
    float fMaxSpeed = 5000.0 / 93.0*PI()*0.15/60.0; //MaxRMP / GearRatio * pi * WheelDia *60 //0.422

    // fLinearSpeed= fLinearSpeed*1.5;
    // fAngularSpeed = fAngularSpeed*1;
    
    s8LeftSpeedPrecent  = (int8_t)((fLinearSpeed - fAngularSpeed*fWheelBase/2)/ fMaxSpeed * 100.0);
    s8RightSpeedPrecent = (int8_t)((fLinearSpeed + fAngularSpeed*fWheelBase/2)/ fMaxSpeed * 100.0);
    //std::cout<<"left:"<<(int)s8LeftSpeedPrecent<<"%"<<" and Right:"<<(int)s8RightSpeedPrecent<<"%"<<std::endl;

    //s8LeftSpeedPrecent =  s8LeftSpeedPrecent*0.9;
    //s8RightSpeedPrecent = s8RightSpeedPrecent*0.9;
    //if(s8LeftSpeedPrecent<10 && s8RightSpeedPrecent<10)
        //{
            //fAngularSpeed = fAngularSpeed/50;
        //}
        

    Device.MOTR_SetMotor2(s8LeftSpeedPrecent, s8RightSpeedPrecent, u8Time);

    
    //ROS_INFO("fLinearSpeed:[%f]", fLinearSpeed);
    //ROS_INFO("fAngularSpeed:[%f]", fAngularSpeed);
    //ROS_INFO("s8LeftSpeedPrecent:[%d]", (int)s8LeftSpeedPrecent);
    //ROS_INFO("s8RightSpeedPrecent:[%d]", (int)s8RightSpeedPrecent);
   
}

/* Defination of Exported Functions -----------------------------------------*/
bool BaseNodeUtil::Initial(){ 
    bool bDeviceConnection = Device.Initial(_n);

    if (bDeviceConnection == true)
    {
        auto_dock_status_pub = _n.advertise<std_msgs::Bool>("/auto_dock_status",100);
        battery_pub = _n.advertise<const sensor_msgs::BatteryState>("/battery",100);
        cmd_loop_pub = _n.advertise<const geometry_msgs::Twist>("/cmd_loop",100);
        current_controller_pub = _n.advertise<const BaseNode::CurrentController>("/current_controller",100);
        dock_error_pub = _n.advertise<const std_msgs::UInt8>("/dock_error",100);
        dock_up_pub = _n.advertise<const std_msgs::Bool>("/dock_up",100);
        flag_report_pub = _n.advertise<const BaseNode::FlagReportStamped>("/flag_report",100);
        ir_dock_report_pub = _n.advertise<const BaseNode::IrDockReport>("/ir_report",100);
        odom_pub = _n.advertise<const nav_msgs::Odometry>("/odom",100);
        pic32_emergenecy_setting_pub = _n.advertise<const BaseNode::PIC32EmergencySetting>("/pic32_emergency_setting",100);
        ping_data_pub = _n.advertise<const BaseNode::PingDataStamped>("/ping_data",100);
        sonar_0_pub = _n.advertise<const sensor_msgs::Range>("/range_sensor/sonar_0",100);
        sonar_1_pub = _n.advertise<const sensor_msgs::Range>("/range_sensor/sonar_1",100);
        sonar_2_pub = _n.advertise<const sensor_msgs::Range>("/range_sensor/sonar_2",100);
        sonar_3_pub = _n.advertise<const sensor_msgs::Range>("/range_sensor/sonar_3",100);
        sonar_4_pub = _n.advertise<const sensor_msgs::Range>("/range_sensor/sonar_4",100);
        sonar_5_pub = _n.advertise<const sensor_msgs::Range>("/range_sensor/sonar_5",100);
        sonar_6_pub = _n.advertise<const sensor_msgs::Range>("/range_sensor/sonar_6",100);
        sonic_report_pub = _n.advertise<const BaseNode::SonicReport>("/sonic_report",100);
        magnet_report_pub = _n.advertise<const BaseNode::MagnetReport>("/magnet_report",100);
        RFID_report_pub = _n.advertise<const BaseNode::RFIDReport>("/RFID_report",100);
        IMU_report_pub = _n.advertise<const BaseNode::IMUReport>("/IMU_report",100);
        //real_speed_data_pub = _n.advertise<const BaseNode::RealSpeedData>("/real_speed_data", 500);

        app_set_velocity_sub = _n.subscribe("/app_set_velocity",100, &BaseNodeUtil::GetAppSetVelocity, this);
        autodock_set_velocity_sub = _n.subscribe("/autodock_set_velocity",100, &BaseNodeUtil::GetAutoDockSetVelocity, this);
        joystick_set_velocity_sub = _n.subscribe("/joystick_set_velocity",100, &BaseNodeUtil::GetJoystickSetVelocity, this);
        navigation_set_velocity_sub = _n.subscribe("/navigation_set_velocity",100, &BaseNodeUtil::GetNaviSetVelocity, this);
        set_velocity_sub = _n.subscribe("/set_velocity",100, &BaseNodeUtil::GetSetVelocity, this);
        app_stop_command_sub = _n.subscribe("/app_stop_command",100, &BaseNodeUtil::GetAppStopCMD, this);
        autodock_stop_command_sub = _n.subscribe("/autodock_stop_command",100, &BaseNodeUtil::GetAutoDockStopCMD, this);
        joystick_stop_command_sub = _n.subscribe("/joystick_stop_command",100, &BaseNodeUtil::GetJoystickStopCMD, this);
        navigation_stop_command_sub = _n.subscribe("/navigation_stop_command",100, &BaseNodeUtil::GetNaviStopCMD, this);
        pic_autodock_sub = _n.subscribe("/pic_autodock",100, &BaseNodeUtil::GetAutoDock, this);
        rgb_led_command_sub = _n.subscribe("/rgb_led_command",100, &BaseNodeUtil::GetRGBLEDCommand, this);
        digit_led_command_sub = _n.subscribe("/digit_led_command", 100, &BaseNodeUtil::GetDigitLEDCommand, this);
        bettery_device_state_sub = _n.subscribe("/battery_device_status", 100, &BaseNodeUtil::GetBatteryState, this);

        base_flag_disable_srv = _n.advertiseService("/base_flag_disable", &BaseNodeUtil::SetFlagDis, this);
        base_IMU_disable_srv = _n.advertiseService("/base_IMU_disable", &BaseNodeUtil::SetBaseIMUDis, this);
        base_ir_srv = _n.advertiseService("/base_ir_disable", &BaseNodeUtil::SetIRDis, this);
        base_ultrasonic_srv = _n.advertiseService("/base_ultrasonic_disable", &BaseNodeUtil::SetUSDis, this);
        //base_mag_sensor_disable_srv = _n.advertiseService("/base_magnetic_sonsor_disable", &BaseNodeUtil::SetMagDis, this);
        //base_RFID_sensor_disable_srv = _n.advertiseService("/base_RFID_sonsor_disable", &BaseNodeUtil::SetRFIDDis, this);

        enable_wheel_brake_srv = _n.advertiseService("/enable_wheel_brake", &BaseNodeUtil::EnableWheelBrake, this);
        enable_wheel_release_srv = _n.advertiseService("/enable_wheel_release", &BaseNodeUtil::EnableWheelRelease, this);
        base_get_LED_srv = _n.advertiseService("/get_led_status", &BaseNodeUtil::GetLEDStatus, this);
        base_set_obstacle_distance_srv = _n.advertiseService("/set_obstacle_distance", &BaseNodeUtil::SetObstacleDistance, this);
        base_get_obstacle_distance_srv = _n.advertiseService("/get_obstacle_distance", &BaseNodeUtil::GetObstacleDistance, this);

        ControlBaseTimer = _n.createTimer(ros::Duration(0.6), &BaseNodeUtil::ControlBaseCallback, this);
        GetInfoTimer = _n.createTimer(ros::Duration(5.0), &BaseNodeUtil::GetBatteryCallback, this);

        //SpeedControlPriority
        ControlBasePriority = 0;
        AppStopCMD = false;
        AutoDockStopCMD = false;
        JoyStopCMD = false;
        NaviStopCMD = false;

        return true;
    }
    else
    {
        ROS_ERROR("PIC32 is not exis!");
        return false;
    }
}

bool BaseNodeUtil::SetFirstPeriordallyReponse()
{
    Device.gReportFlag.u8WheelReport = 0x82; 
    Device.gReportFlag.u8ChargeReport = 0x82;
    Device.gReportFlag.u8FlagReport = 0x82;
    Device.gReportFlag.u8IRReport = 0x82; 
    Device.gReportFlag.u8IMUReport = 0x82; 
    Device.gReportFlag.u8USReport = 0x82;
    Device.GetDataPeriodically(Device.gReportFlag.u8WheelReport, Device.gReportFlag.u8ChargeReport, Device.gReportFlag.u8FlagReport, Device.gReportFlag.u8IRReport, Device.gReportFlag.u8IMUReport, Device.gReportFlag.u8USReport, 0x00, 0x00);
}

bool BaseNodeUtil::UpDataandPublish(){
    PublishPingData(); //Checked
    PublishDockUp(); //Checked
    PublishFlagReport(); //Checked
    PublishSonicSensor(); //Checked
    PublishIRReport(); //Checked
    PublishSonicReport(); //Checkedd
    //PublishMagnetReport(); //Checked
    //PublishRFIDReport(); 
    PublishIMUReport();
    PublishOdom();
}

void BaseNodeUtil::ControlBaseCallback(const ros::TimerEvent& event)
{
    ControlBasePriority = 0;
    ControlBaseTimer.stop();
}
void BaseNodeUtil::GetBatteryCallback(const ros::TimerEvent& event)
{
    //Device.GetBatteryInfo(0x07);
}

//Publish
void  BaseNodeUtil::PublishPingData()
{
    gPingDataStamped.header.stamp = ros::Time::now();
    gPingDataStamped.ping_data.pingSN = patch::to_string(Device.Model.gDeviceInfo.as8RobotSN);
    gPingDataStamped.ping_data.firmwareVer = patch::to_string(Device.Model.gDeviceInfo.au8FWVersion);
    gPingDataStamped.ping_data.deviceID = patch::to_string(Device.Model.gDeviceInfo.u32DeviceID);
    ping_data_pub.publish(gPingDataStamped);
}
void BaseNodeUtil::PublishDockUp()
{
    if (Device.Model.gDeviceStatus.u8DockStatus == true)
        gDockUp.data = true;
    else 
        gDockUp.data = false;

    dock_up_pub.publish(gDockUp);
}
string ShowIRMsg(uint8_t u8Code)
{
    switch(u8Code)
    {
        case 1:
            return("L");
            break;
        case 2:
            return("R");
            break;
        case 3:
            return("LR");
            break;
        case 4:
            return("U");
            break;
        case 5:
            return("N");
            break;
        default:
            return("U");
            break;
    }
}
void BaseNodeUtil::PublishIRReport()
{
    gIrDockReport.ir_left_stat = Device.Model.gDeviceStatus.au8IR[0];
    gIrDockReport.ir_right_stat = Device.Model.gDeviceStatus.au8IR[1];
    gIrDockReport.ir_left = ShowIRMsg(Device.Model.gDeviceStatus.au8IR[0]);
    gIrDockReport.ir_right = ShowIRMsg(Device.Model.gDeviceStatus.au8IR[1]);
    ir_dock_report_pub.publish(gIrDockReport);
}
void BaseNodeUtil::PublishSonicSensor()
{
    for (int i = 0; i<=7; i++)
    {
        gSonar[i].range = Device.Model.gDeviceStatus.au8US[i];
    }
    sonar_0_pub.publish(gSonar[0]);
    sonar_1_pub.publish(gSonar[1]);
    sonar_2_pub.publish(gSonar[2]);
    sonar_3_pub.publish(gSonar[3]);
    sonar_4_pub.publish(gSonar[4]);
    sonar_5_pub.publish(gSonar[5]);
    sonar_6_pub.publish(gSonar[6]);
}
void BaseNodeUtil::PublishSonicReport()
{   
    for (int i = 0; i<7; i++)
    {
        bool Temp;
        if (Device.Model.gDeviceStatus.au8US[i] >= Device.Model.gDeviceStatus.au8ObstacleDistance[i])
            Temp = false;
        else
            Temp = true;
        gSonicReport.sonic_too_close.push_back(Temp);
    }
    sonic_report_pub.publish(gSonicReport);
    gSonicReport.sonic_too_close.clear();
}
void BaseNodeUtil::PublishFlagReport()
{
    BaseNode::FlagReportStamped bnFlagReportStamped;
    bnFlagReportStamped.header.stamp = ros::Time::now();
    std::bitset<8> bsTemp((unsigned long)Device.Model.gDeviceStatus.u8MoveDirect);
    for (int i = 0; i<8; i++)
    {
        if (bsTemp[i] == 1)
        {
            switch(i)
            {
                case 0:
                    bnFlagReportStamped.flag_report.stop = true;
                    break;
                case 1:
                    bnFlagReportStamped.flag_report.walking_front = true;
                    break;
                case 2:
                    bnFlagReportStamped.flag_report.walking_back = true;
                    break;
                case 3:
                    bnFlagReportStamped.flag_report.rotating_left = true;
                    break;
                case 4:
                    bnFlagReportStamped.flag_report.rotating_right = true;
                    break;
            }
            break;
        }
        
    }
    switch(Device.Model.gDeviceStatus.u8WheelMotorMode)
    {
        case 0:
            bnFlagReportStamped.flag_report.wheel_control_mode_1 = true;
            break;
        case 1:
            bnFlagReportStamped.flag_report.wheel_control_mode_2 = true;
            break;
        case 2:
            bnFlagReportStamped.flag_report.wheel_control_mode_3 = true;
            break;
        case 3:
            bnFlagReportStamped.flag_report.wheel_brake_mode = true;
            break;
        case 4:
            bnFlagReportStamped.flag_report.wheel_release_mode = true;
            break;
        case 5:
            bnFlagReportStamped.flag_report.go_to_dock = true;
            break;
        case 6:
            bnFlagReportStamped.flag_report.dock_escape = true;
            break;
    }

    switch(Device.Model.gDeviceStatus.u8ChargeStatus)
    {
        case 0:
            bnFlagReportStamped.flag_report.do_not_charge = true;
            break;
        case 1:
            bnFlagReportStamped.flag_report.charging = true;
            break;
        case 2:
            bnFlagReportStamped.flag_report.charge_finish = true;
            break;
        case 3:
            bnFlagReportStamped.flag_report.fault_in_charge = true;
            break;
    }

    if (Device.Model.gDeviceStatus.u8StopBtnStatus == true)
        bnFlagReportStamped.flag_report.stop_btn_hit = true;

    if (Device.Model.gDeviceStatus.u8SleepBtnStatus == true)
    bnFlagReportStamped.flag_report.sleep_btn_hit = true;

    flag_report_pub.publish(bnFlagReportStamped);
}
void BaseNodeUtil::PublishMagnetReport()
{
    for(int i = 1; i<16; i++)
    {
        gMagnetReport.cell.push_back(Device.Model.gDeviceStatus.au8Mag[i]);
    }
    magnet_report_pub.publish(gMagnetReport);
    gMagnetReport.cell.clear();
}
string dec2hex(uint8_t i)
{
    char s[20];
    sprintf(s, "%X", i);//uppercase
    //sprintf(s, "%x", i);//lowercase
    if (i < 0x10)
        return "0" + string(s);
    else
        return string(s);
}
void BaseNodeUtil::PublishRFIDReport()
{
     if (Device.Model.gDeviceStatus.bRFIDStatus == true)
    {
        const uint8_t u8Len = Device.Model.gDeviceStatus.u8RFIDLen;
        string str;
        for (int i = 0; i<u8Len; i++)   
        {
            str = str + dec2hex(Device.Model.gDeviceStatus.au8RFID[i]);
        }
        gRFIDReport.RFIDNo = str;
        gRFIDReport.detect_status = true;
    }
    else
    {
        gRFIDReport.RFIDNo = "NONE";
        gRFIDReport.detect_status = false;
    }
    RFID_report_pub.publish(gRFIDReport);
}
void BaseNodeUtil::PublishOdom()
{
    tf::TransformBroadcaster tfOdomBroadcaster;

    float fDeltaX, fDeltaY, fDeltath;
    tCurrentTime = ros::Time::now();
    float fWheelBase = 0.5187; //unit:m
    //float fMaxLinearSpeed = 5000.0 / 93.0*PI()*0.15/60.0; //MaxRMP / GearRatio * pi * WheelDia *60
    float fMaxLinearSpeed = 5000.0 / 93.0*PI()*0.15/60.0; //MaxRMP / GearRatio * pi * WheelDia *60
    float fMaxAngulearSpeed = fMaxLinearSpeed*2 / (fWheelBase/2.0); //MaxRMP / GearRatio * pi * WheelDia *60
    float fDeltaT = (tCurrentTime-tLastTime).toSec();

    float fLineVelValue, fAngVelValue; 
    fLineVelValue = Device.Model.gDeviceStatus.s16BodyVel /100.0/100.0 * fMaxLinearSpeed;
    fAngVelValue = Device.Model.gDeviceStatus.s16BodyAngVel /100.0/100.0 * fMaxAngulearSpeed;
    //std::cout << "fLineVelValue=" << setprecision(2) << fLineVelValue << " fAngVelValue=" <<setprecision(2)<< fAngVelValue << std::endl;
    fDeltaX = (fLineVelValue * cos(fTHTransform))*fDeltaT;
    fDeltaY = (fLineVelValue * sin(fTHTransform))*fDeltaT;
    fDeltath = fAngVelValue*fDeltaT;

    // ROS_INFO("fDeltaX:[%f]", fDeltaX);
    // ROS_INFO("fDeltaY:[%f]", fDeltaY);


    fDeltaX = (fDeltaX*1.2);    //x
    fDeltaY = (fDeltaY*1.28);     //y
    fDeltath = (fDeltath/1.63);   //angle



    fXTransform = fXTransform + fDeltaX;
    fYTransform = fYTransform + fDeltaY;
    fTHTransform = fTHTransform + fDeltath;

    
    geometry_msgs::Quaternion odom_quat = tf::createQuaternionMsgFromYaw(fTHTransform);

    //set odom tf
    geometry_msgs::TransformStamped odom_trans;
    odom_trans.header.stamp = tCurrentTime;
    odom_trans.header.frame_id = "odom";
    odom_trans.child_frame_id = "base_footprint";
    odom_trans.transform.translation.x = fXTransform;
    odom_trans.transform.translation.y = fYTransform;
    odom_trans.transform.translation.z = 0.0;
    odom_trans.transform.rotation = odom_quat;
    //send the transform
    tfOdomBroadcaster.sendTransform(odom_trans);
    
    //set odometry
    nav_msgs::Odometry odom;
    odom.header.stamp = tCurrentTime;
    odom.header.frame_id = "odom";
    odom.pose.pose.position.x = fXTransform;
    odom.pose.pose.position.y = fYTransform;
    odom.pose.pose.position.z = 0.0;
    odom.pose.pose.orientation = odom_quat;
    odom.child_frame_id = "base_link";
    odom.twist.twist.linear.x = fLineVelValue;
    odom.twist.twist.linear.y = 0.0;
    odom.twist.twist.angular.z = fAngVelValue;
    //publish               
    odom_pub.publish(odom);
    tLastTime = tCurrentTime;
}
void BaseNodeUtil::PublishIMUReport()
{
    gIMUReport.linear_acc.x = Device.Model.gDeviceStatus.as16IMU[0]/8192.0;
    gIMUReport.linear_acc.y = Device.Model.gDeviceStatus.as16IMU[1]/8192.0;
    gIMUReport.linear_acc.z = Device.Model.gDeviceStatus.as16IMU[2]/8192.0;
    gIMUReport.angular_acc.x = Device.Model.gDeviceStatus.as16IMU[3]/65.5;
    gIMUReport.angular_acc.y = Device.Model.gDeviceStatus.as16IMU[4]/65.5;
    gIMUReport.angular_acc.z = Device.Model.gDeviceStatus.as16IMU[5]/65.5;
    IMU_report_pub.publish(gIMUReport);
}






