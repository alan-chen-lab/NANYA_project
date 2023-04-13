
/*
 *******************************************************************************
 * File Name    : DeviceModel.hpp
 * Description  : The header file of DeviceModel.
 * Revision     : 0.0.1
 * Author       : RainZhu
 * Note         : DVPT means the component name of DVPT_DeviceProtocol.
 *
 * Copyright 2021 New Kinpo Group
 * All Rights Reserved
 *******************************************************************************
 */
#ifndef DEVICE_PROTOCOL_H
#define DEVICE_PROTOCOL_H

/* Include ---------------------------------------------------------*/
#include <stdint.h>
#include <ros/ros.h>
#include "iostream"
#include "vector"

using namespace std;

/* Defined Constants ---------------------------------------------------------*/
/*
 * Define Header0 Byte
 */
#define HEADER0 0xFF

/*
 * Define Header1 Byte
 */
#define HEADER1 0xFD

/*
 * Define End Byte
 */
#define END 0xFE

#define RESET_DEVICE 0x01
#define CONNECT_DEVICE 0x02
#define CONFIRM_DEVICE_CONNECTION 0x0E
#define SEND_REMOTE_STATUS 0x03
#define BATTERY_INFO 0x0D
#define GET_DATA_ONCE 0x0C
#define GET_DATA_PERIODICALLY 0x11
#define GET_LED_STATUS 0x13
#define SET_WHEEL_BY_MODE_1 0x04
#define SET_WHEEL_BY_MODE_2 0x05
#define SET_WHEEL_BY_MODE_3 0x06
#define SET_WHEEL_BY_SPECIAL_MODE 0x07
#define SET_DIGITAL_LED 0x09
#define SET_RGB 0x0A
#define SET_OBSTACLE_DISTANCE 0x1B
#define GET_OBSTACLE_DISTANCE 0x1C
#define GET_REAL_SPEED_DATA 0x41 


//Recv (REPT-Report)
#define DEVICE_RESET_ACK 0x71
#define FW_VERSION_REPT 0x72
#define DEVICE_ID_REPT 0x73
#define USAGE_TIME_REPT 0x74
#define ROBOT_SN_REPT 0x75
#define DEVICE_CONNECTION 0x86
#define REMOTR_CONNECTION_STATUS 0x88
#define BATTERY_PART1_REPT 0x84
#define BATTERY_PART2_REPT 0x85
#define BATTERY_PART3_REPT 0x89

#define WHEEL_SPEED_REPT 0x7F
#define CHARGER_STATUS_REPT 0x80
#define MOVE_DIRECT_REPT 0x90
#define WHEEL_MOTOR_MODE_REPT 0x91
#define BTN_STATUS_REPT 0x92
#define SLEEP_BTN_STATUS_REPT 0x93

//Recv
#define CONNECT_STATUS_REPT 0x94
#define DOCK_STATUS_REPT 0x95
#define DEVICE_EW_REPT 0x96
#define US_INFO_REPT 0x97
#define IR_STATUS_REPT 0x98
#define IMU_INFO_REPT 0x99
#define RFID_INFO_REPT 0x9A
#define MAG_INFO_REPT 0x9B
#define DIGITAL_LED_STATUS_REPT 0x8C
#define RGB_LED_STATUS_REPT 0x8D
#define WHEEL_MODE1_REPY 0x77
#define WHEEL_MODE2_REPY 0x78
#define WHEEL_MODE3_PEPY 0x79
#define WHEEL_SPECIAL_MODE_REPY 0x7A
#define DIGIAL_LED_REPY 0x7C
#define RGB_LED_REPY 0x7D
#define SET_OBSTACLE_DISTANCE_REPY 0xA3
#define GET_OBSTACLE_DISTANCE_REPY 0xA4

/* Type-Defines --------------------------------------------------------------*/
class DeviceProtocol
{
    public:
        void Initial();
        void SendBytetoPIC(uint8_t *au8CMD, uint8_t u8Len);
        vector<uint8_t>RecvBytefromPIC();
    private:
        bool SerialInitial();
};




#endif /* DEVICE_PROTOCOL_H */
