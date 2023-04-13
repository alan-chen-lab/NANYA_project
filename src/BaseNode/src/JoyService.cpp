/*
 *******************************************************************************
 * File Name    : joy_command.cpp
 * Description  : This file is ROS for Joystick send the command to PIC32.
 * Revision     : 0.0.1
 * Author       : RainZhu
 * Note         : 
 *
 * Copyright 2021 New Kinpo Group
 * All Rights Reserved
 *******************************************************************************
 */

/* Includes ------------------------------------------------------------------*/
#include "ros/ros.h"
#include <iostream>
#include <sensor_msgs/Joy.h>
#include <geometry_msgs/Twist.h>
#include <BaseNode/RGBLEDControl.h>
#include <BaseNode/DigitLEDControl.h>

/* Defined Constants ---------------------------------------------------------*/
#define DIGIT_LED_CONTROL_TIME  10
#define RGB_LED_CONTROL_TIME    10

#define HIGH_LINEAR_SPEED 0.2f
#define LOW_LINEAR_SPEED  0.1f
#define HIGH_ANGULAR_SPEED 20.0f
#define LOW_ANGULAR_SPEED  10.0f


/* Macros --------------------------------------------------------------------*/
#define PI()                    4*atan(1)

/* Global Variables ----------------------------------------------------------*/
ros::Publisher set_velocity_pub;
ros::Publisher set_rgb_pub;
ros::Publisher set_digit_pub; 

ros::Subscriber joy_sub;

/* Declaration of Local Functions --------------------------------------------*/
void GetJoyPush(const sensor_msgs::Joy& JoyPush);

/* Definition of Local Functions ---------------------------------------------*/
int main(int argc, char** argv)
{
    //ROS Node initial
    ros::init(argc, argv, "joy_command");

    //make a node
    ros::NodeHandle nJoyCommand;

    //Publish
    set_velocity_pub = nJoyCommand.advertise<const geometry_msgs::Twist>("/joystick_set_velocity",100);
    set_rgb_pub =  nJoyCommand.advertise<const BaseNode::RGBLEDControl>("/rgb_led_command",100);
    set_digit_pub =  nJoyCommand.advertise<const BaseNode::DigitLEDControl>("/digit_led_command",100);

    //Subscrible 
    joy_sub = nJoyCommand.subscribe("/joy",100,GetJoyPush);

    ros::Rate loop_rate(10);
    while(ros::ok())
    {
        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}

void GetJoyPush(const sensor_msgs::Joy& JoyPush)
{
    bool bLeftLED = false, bRightLED = false;
    bool bHighSpeed = JoyPush.buttons[4];
    bool bLowSpeed = JoyPush.buttons[5];
    uint8_t u8RedLED = 0, u8GreenLED = 0, u8BlueLED = 0;
    if (JoyPush.axes[6] == 1.0) bLeftLED = true;
    else bLeftLED = false;
    if (JoyPush.axes[6] == -1.0) bRightLED = true;
    else bRightLED = false;
    
    //Publish message
    if (JoyPush.axes[0] > 0.2 || JoyPush.axes[0] < -0.2 || JoyPush.axes[1] > 0.2 || JoyPush.axes[1] < -0.2)
    {
        if (bLowSpeed == true)
        {
            geometry_msgs::Twist geControlSpeed;
            geControlSpeed.linear.x = JoyPush.axes[1]*LOW_LINEAR_SPEED;
            geControlSpeed.angular.z = JoyPush.axes[0]*LOW_ANGULAR_SPEED;
            set_velocity_pub.publish(geControlSpeed);
        }
        else if (bHighSpeed == true)
        {
            geometry_msgs::Twist geControlSpeed;
            geControlSpeed.linear.x = JoyPush.axes[1]*HIGH_LINEAR_SPEED;
            geControlSpeed.angular.z = JoyPush.axes[0]*HIGH_ANGULAR_SPEED;
            set_velocity_pub.publish(geControlSpeed);
        }
    }

    if ((bLeftLED == true) || (bRightLED == true))
    {
        BaseNode::DigitLEDControl DigitControl;
        DigitControl.left_dig_led = bLeftLED;
        DigitControl.right_dig_led = bRightLED;
        DigitControl.left_run_time = 0.5;
        DigitControl.right_run_time = 0.5;
        set_digit_pub.publish(DigitControl);
    }

    if (JoyPush.buttons[2] == true) u8BlueLED = 0xFF;
    if (JoyPush.buttons[1] == true) u8RedLED = 0xFF;
    if (JoyPush.buttons[0] == true) u8GreenLED = 0xFF;

    if ((u8BlueLED != 0) || (u8RedLED != 0) || (u8GreenLED != 0))
    {
        BaseNode::RGBLEDControl RGBLEDControl;
        RGBLEDControl.start_red = u8RedLED;
        RGBLEDControl.start_green = u8GreenLED;
        RGBLEDControl.start_blue = u8BlueLED;
        RGBLEDControl.end_red = u8RedLED;
        RGBLEDControl.end_green = u8GreenLED;
        RGBLEDControl.end_blue = u8BlueLED;
        RGBLEDControl.transform_time = 0.5;
        RGBLEDControl.run_time = 0.5;
        set_rgb_pub.publish(RGBLEDControl);
    }


}
