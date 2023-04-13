
/*
 *******************************************************************************
 * File Name    : Device.cpp
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
#include "BaseNode/DeviceModel.hpp"

using namespace std;

/* Defined Constants ---------------------------------------------------------*/

/* Macros --------------------------------------------------------------------*/

/* Type-Defines --------------------------------------------------------------*/

/* Global Variables ----------------------------------------------------------*/

/* Declaration of Exported Variables -----------------------------------------*/

/* Declaration of Exported Functions -----------------------------------------*/
void DeviceModel::Initial()
{
  //GetStatus
  gDeviceStatus.s16BodyVel = 0;
  gDeviceStatus.s16BodyAngVel = 0;
  gDeviceStatus.u16LeftWheelEnc = 0;
  gDeviceStatus.u16RightWheelEnc = 0;
  gDeviceStatus.u8ChargeStatus = 0;
  gDeviceStatus.u8MoveDirect = 0;
  gDeviceStatus.u8WheelMotorMode = 0;
  gDeviceStatus.u8StopBtnStatus = 0;
  gDeviceStatus.u8SleepBtnStatus = 0;
  gDeviceStatus.u8DockStatus = 0;
  gDeviceStatus.u32PICEWStatus = 0;
  
  for (int i = 0;i<7;i++)
    gDeviceStatus.au8US[i] = 0;
  for (int i = 0;i<2;i++)
    gDeviceStatus.au8IR[i] = 0;
  for (int i = 0;i<6;i++)
    gDeviceStatus.as16IMU[i] = 0;

  gDeviceStatus.bRFIDStatus = 0;
  gDeviceStatus.u8RFIDLen = 0;
  for (int i = 0;i<8;i++)
    gDeviceStatus.au8RFID[i] = 0;
  for (int i = 0;i<16;i++)
    gDeviceStatus.au8Mag[i] = 0;

  gDeviceStatus.au8DigitalLED0 = 0;
  gDeviceStatus.au8DigitalLED1 = 0;
  gDeviceStatus.au8RGBLEDRed = 0;
  gDeviceStatus.au8RGBLEDGreen = 0;
  gDeviceStatus.au8RGBLEDBlue = 0;

  //DeviceInfo
  for (int i = 0;i<4;i++)
    gDeviceInfo.au8FWVersion[i] = 0;
  for (int i = 0;i<18;i++)
    gDeviceInfo.as8RobotSN[i] = 0;
  gDeviceInfo.u32DeviceID = 0;
  gDeviceInfo.u16UsageTimeDay = 0;
  gDeviceInfo.u8UsageTimeHour = 0;
  gDeviceInfo.u8UsageTimeMinute = 0;
  gDeviceInfo.u8ConfirmInnerConnect = 0;

  //BatteryInfo
  gBatteryInfo.u16BatVol = 0;
	gBatteryInfo.s16BatCur = 0;
	gBatteryInfo.u16BatPer = 0;
	gBatteryInfo.u16BatCap = 0;
	gBatteryInfo.u16BatART = 0;
	gBatteryInfo.u16BatTemp = 0;
	gBatteryInfo.u16BatACT = 0;
	gBatteryInfo.s16BatVol0 = 0;
	gBatteryInfo.s16BatVol1 = 0;
	gBatteryInfo.s16BatVol2 = 0;
	gBatteryInfo.s16BatVol3 = 0;
	gBatteryInfo.s16BatVol4 = 0;
	gBatteryInfo.s16BatVol5 = 0;
	gBatteryInfo.s16BatVol6 = 0;
	gBatteryInfo.u16BatSta = 0;
	gBatteryInfo.u32BatSftSta = 0;
	gBatteryInfo.u32BatPfSta = 0;
}

