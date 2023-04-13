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
#ifndef DEVICE_MODEL_H
#define DEVICE_MODEL_H

/* Include ---------------------------------------------------------*/

#include <ros/ros.h>
#include "iostream"
#include <stdint.h>
#include <vector>

using namespace std;

/* Defined Constants ---------------------------------------------------------*/

typedef struct DeviceStatus
{
	/*
	 * Wheel velocity
	 */
	int16_t s16BodyVel;

	/*
	 * Wheel angular velocity
	 */
	int16_t s16BodyAngVel;

	/*
	 * Left wheel encoder value
	 */
	uint16_t u16LeftWheelEnc;

	/*
	 * Right wheel encoder value
	 */
	uint16_t u16RightWheelEnc;

	/*
	 * Charge status
	 */
	uint8_t u8ChargeStatus;

	/*
	 * Moving direction
	 */
	uint8_t u8MoveDirect;

	/*
	 * Wheel motor mode
	 */
	uint8_t u8WheelMotorMode;

	/*
	 * Stop button status
	 */
	uint8_t u8StopBtnStatus;

	/*
	 * Sleep button status
	 */
	uint8_t u8SleepBtnStatus;

	/*
	 * Connection status
	 */
	uint8_t u8ConnectStatus;

	/*
	 * Dock status
	 */
	uint8_t u8DockStatus;

	/*
	 * Error and Warning
	 */
	uint32_t u32PICEWStatus;

	/*
	 * Ultrasonic sensor
	 */
	uint8_t au8US[7];

	/*
	 * IR sensor
	 */
	uint8_t au8IR[2];

	/*
	 * IMU sensor
	 */
	int16_t as16IMU[6];

	/*
	 * RFID status
	 */
	bool bRFIDStatus;

	/*
	 * RFID Length
	 */
	uint8_t u8RFIDLen;

	/*
	 * RFID tagID
	 */
	uint8_t au8RFID[8];

	/*
	 * Magnetic sensor
	 */
	uint8_t au8Mag[16];

	/*
	 * Digital LED0
	 */
	uint8_t au8DigitalLED0;

	/*
	 * Digital LED1
	 */
	uint8_t au8DigitalLED1;

	/*
	 * RGB LED red
	 */
	uint8_t au8RGBLEDRed;

	/*
	 * RGB LED reen
	 */
	uint8_t au8RGBLEDGreen;

	/*
	 * RGB LED blue
	 */
	uint8_t au8RGBLEDBlue;

	/*
	 * obstance distance
	 */
	uint8_t au8ObstacleDistance[7];

	/*
	 * ErrorWarning
	 */
	uint32_t u32ErrorWarning;
} DeviceStatus;
typedef struct DeviceInfo
{
	/*
	 * Firmware version
	 */
	uint8_t au8FWVersion[4];

	/*
	 * SN Number
	 */
	char as8RobotSN[18];

	/*
	 * Device ID
	 */
	uint32_t u32DeviceID;

	/*
	 * Usage Time-Day
	 */
	uint16_t u16UsageTimeDay;

	/*
	 * Usage Time-Hour
	 */
	uint8_t u8UsageTimeHour;

	/*
	 * Usage Time-Minute
	 */
	uint8_t u8UsageTimeMinute;

	/*
	 * Confirm Inner Device Connect
	 */
	uint8_t u8ConfirmInnerConnect;
} DeviceInfo;
typedef struct BatteryInfo
{
	/*
	 * Battery Voltage
	 */
	uint16_t u16BatVol;

	/*
	 * Battery Current
	 */
	int16_t s16BatCur;

	/*
	 * Battery Percent
	 */
	uint16_t u16BatPer;

	/*
	 * Battery Capacity
	 */
	uint16_t u16BatCap;

	/*
	 * Average Remaining time to make the battery empty
	 */
	uint16_t u16BatART;

	/*
	 * Battery Temperature
	 */
	uint16_t u16BatTemp;

	/*
	 * Average charging time to make the battery full
	 */
	uint16_t u16BatACT;

	/*
	 * Voltage of battery cell0
	 */
	int16_t s16BatVol0;

	/*
	 * Voltage of battery cell1
	 */
	int16_t s16BatVol1;

	/*
	 * Voltage of battery cell2
	 */
	int16_t s16BatVol2;

	/*
	 * Voltage of battery cell3
	 */
	int16_t s16BatVol3;

	/*
	 * Voltage of battery cell4
	 */
	int16_t s16BatVol4;

	/*
	 * Voltage of battery cell5
	 */
	int16_t s16BatVol5;

	/*
	 * Voltage of battery cell6
	 */
	int16_t s16BatVol6;

	/*
	 * Status of Battery
	 */
	uint16_t u16BatSta;

	/*
	 * Safety status of the battery
	 */
	uint32_t u32BatSftSta;

	/*
	 * Permanent failure status of the battery
	 */
	uint32_t u32BatPfSta;
}BatteryInfo;


class DeviceModel
{
    public:
        DeviceStatus gDeviceStatus;
		DeviceInfo gDeviceInfo;
		BatteryInfo gBatteryInfo;
        void Initial(); 
    private:
        
};

#endif /* DEVICE_MODEL_H */