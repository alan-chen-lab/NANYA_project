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
#include "Battery/Battery.hpp"
#include <serial/serial.h>
#include "ros/ros.h"
#include "ros/timer.h"
#include "ros/timer_manager.h"
/* Defined Constants ---------------------------------------------------------*/


/* Macros --------------------------------------------------------------------*/

/* Type-Defines --------------------------------------------------------------*/

/* Global Variables ----------------------------------------------------------*/
serial::Serial sp;

ros::Timer GetBatteryInfoTimer;
ros::Timer PubBatteryInfoTimer;

ros::Publisher battery_pub;
/* Declaration of Exported Variables -----------------------------------------*/

void GetBatteryCallback(const ros::TimerEvent& event);
void PubBatteryCallback(const ros::TimerEvent &event);
bool SerialInitial();
void RequestBatteryInfo();
void SendByte(uint8_t *au8CMD, uint8_t u8Len);
void RecvByte();

/* Declaration of Exported Functions -----------------------------------------*/
int main(int argc, char** argv)
{
    ros::init(argc, argv, "BatteryNode");
    bool SerialSuccess = SerialInitial();
    
    ros::NodeHandle _n;
    
    GetBatteryInfoTimer = _n.createTimer(ros::Duration(5.0), &GetBatteryCallback);
    PubBatteryInfoTimer = _n.createTimer(ros::Duration(5.0), &PubBatteryCallback);
    battery_pub = _n.advertise<const sensor_msgs::BatteryState>("/battery_device_status",1);

    ros::AsyncSpinner spinner(0);
    spinner.start();
    
    ros::Rate loop_rate(100);
    
    ros::waitForShutdown();
    return 0;
    
}

void GetBatteryCallback(const ros::TimerEvent& event)
{
    RequestBatteryInfo();
}

void PubBatteryCallback(const ros::TimerEvent& event)
{
    RecvByte();
}

bool SerialInitial()
{
    if (!sp.isOpen())
    {
        //timeout
        serial::Timeout to = serial::Timeout::simpleTimeout(100);
        //serial name
        sp.setPort("/dev/ttyUSB-battery");
        //setBaudrate
        sp.setBaudrate(9600);
        //set timeout
        sp.setTimeout(to);
        try
        {
            //open serial
            sp.open();
        }
        catch(serial::IOException& e)
        {
            ROS_ERROR_STREAM("Unable to open port!!!");
            return false;
        }
        //check serial port
        if(sp.isOpen())
        {
            ROS_INFO_STREAM("/dev/ttyUSB-battery is opened!!!");
        }
        else
        {
            return false;
        }
    }

    return true;
}

void RequestBatteryInfo()
{
    uint8_t au8CMD[4] = {0};
	uint8_t u8CRCResult = 0;
	au8CMD[0] = 0xFF;
	au8CMD[1] = 0x55;
	au8CMD[2] = 0xEE;
	au8CMD[3] = 0xAF;
	SendByte(au8CMD, 4);
    //ROS_INFO_STREAM("SD");
}

void SendByte(uint8_t *au8CMD, uint8_t u8Len)
{
    sp.write(au8CMD, u8Len);
}

void RecvByte()
{
    size_t n = sp.available();

    if (n >= 19)
    {
         
        uint8_t buffer[20];
        n = sp.read(buffer, n);

        //check RecvBatteryInfo
        // for (int i = 0; i<20; i++)
        //     std::cout << std::hex << (buffer[i] & 0xff) << " "; 
        // std::cout << std::endl;

        if ((0xAA == buffer[0])  && (0x55 == buffer[1])  && (0xEE == buffer[2])) 
        {
            //CMD must be 0
            if (0xAF == buffer[3])
            {
               //CheckSum 
               sensor_msgs::BatteryState BatteryInfo;
               //BatteryInfo.header.stamp = ros::Time::now();
               BatteryInfo.power_supply_technology = buffer[4]; //Alarm
               BatteryInfo.voltage = (float)(((int16_t)((buffer[7]<<8) + buffer[6]))/1000.0); //mv->V
               BatteryInfo.percentage = buffer[8]/100.0;
               BatteryInfo.current = (float)(((int16_t)((buffer[10]<<8) + buffer[9]))/100.0); //mA->A
               if (0 < BatteryInfo.current)
                BatteryInfo.power_supply_status = POWER_SUPPLY_STATUS_CHARGING;
               else if (0 == BatteryInfo.current)
                BatteryInfo.power_supply_status = POWER_SUPPLY_STATUS_NOT_CHARGING;
               else if (0 > BatteryInfo.current)    
                BatteryInfo.power_supply_status = POWER_SUPPLY_STATUS_DISCHARGING;

               BatteryInfo.present = true;
               float fMaxCellVol = ((uint16_t)((buffer[14]<<8) + buffer[13]))/1000.0;
               float fMinCellVol = ((uint16_t)((buffer[16]<<8) + buffer[15]))/1000.0;
               BatteryInfo.cell_voltage.push_back(fMaxCellVol);
               BatteryInfo.cell_voltage.push_back(fMinCellVol);

               battery_pub.publish(BatteryInfo);
            }
        }
    }
}
