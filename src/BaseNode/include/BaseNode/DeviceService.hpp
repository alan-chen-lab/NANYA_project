
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
#ifndef DEVICE_SERVICE_H
#define DEVICE_SERVICE_H

/* Include -------------------------------------------------------------------*/
#include "BaseNode/DeviceModel.hpp"
#include "BaseNode/DeviceProtocol.hpp"

#include <stdint.h>
#include <ros/ros.h>
#include "iostream"
#include "vector"


using namespace std;

typedef struct DeviceResp
{
    uint8_t Resp;
    uint8_t RespCMD;
}DeviceResp;
typedef struct ReportFlag
{
    uint8_t u8WheelReport;

    uint8_t u8ChargeReport;

    uint8_t u8FlagReport;

    uint8_t u8IRReport;

    uint8_t u8IMUReport;

    uint8_t u8USReport;

    uint8_t u8MSReport;

    uint8_t u8RFIDReport;
}ReportFlag;

/* Defined Constants ---------------------------------------------------------*/
class DeviceService
{
    public:
        DeviceModel Model;
        DeviceProtocol Protocol;
        uint8_t gDeviceBuff[1024];
        uint16_t gu16DeviceHead;
        ReportFlag gReportFlag;
        vector<uint8_t> gRespCMD;
        bool gWaitReq;

        bool Initial(ros::NodeHandle _node);
        void JudgeDeviceBuff();
        void DelRespinBuff();
        void DelFirstByteinBuff();
        //Call the relative function
        bool ProcessDevResp(DeviceResp CorrectResp);
        bool WaitforResp(uint8_t u8CheckCMDNo);

        //PIC Command();
        //Chapter3
        bool ResetDevice();
        bool ConnectDevice();
        bool ConfirmConnect();
        bool SendRemoteStatus(uint8_t u8Status);
        //Chapter4
        bool GetBatteryInfo(uint8_t u8BattNum);
        bool GetDataOnce(uint8_t u8Wheel, uint8_t u8Charger, uint8_t u8Flag, uint8_t u8US,uint8_t u8IR, uint8_t u8IMU, uint8_t u8RFID, uint8_t u8Mag);
        bool GetDataPeriodically(uint8_t u8Wheel, uint8_t u8Charger, uint8_t u8Flag, uint8_t u8US, uint8_t u8IR, uint8_t u8IMU, uint8_t u8RFID, uint8_t u8Mag);
        bool GetTwoLEDStatus(uint8_t u8Led); 
        //Chapter5
        bool MOTR_SetMotor1(uint8_t u8Vel, uint8_t u8AngVel, uint8_t u8Time);
        bool MOTR_SetMotor2(int8_t s8LeftVel, int8_t s8RightVel, uint8_t u8Time);
        bool MOTR_SetMotor3(int16_t s16Distance, int16_t s16Rotate, uint8_t u8Time);
        bool MOTR_SetMotorSpec(uint8_t u8Mode);
        //Chapter6
        bool SetDigitalLED(uint8_t u8Led1, uint8_t u8Led2, uint8_t u8Led1Time, uint8_t u8Led2Time);
        bool SetRGBLED(uint8_t u8StartBrightR, uint8_t u8StartBrightG, uint8_t u8StartBrightB, uint8_t u8EndBrightR, uint8_t u8EndBrightG, uint8_t u8EndBrightB, uint8_t u8Time, uint8_t u8CusTime);
        //Chapter7 
        bool SetObsDis(uint8_t u8USDis0, uint8_t u8USDis1, uint8_t u8USDis2, uint8_t u8USDis3, uint8_t u8USDis4, uint8_t u8USDis5, uint8_t u8USDis6);
        bool GetObsDis();
        //Chapter8 (undone)
        //Chapter9 (undone)
        
    private:
        ros::Timer RespTimer;
        bool SerialEnable;

        void RecvBufCallback(const ros::TimerEvent& event);
        bool ConfirmCMDSuccess(uint8_t u8CheckCMDNo);
        bool GetPICRecvCMD(uint8_t u8CheckCMDNo);
        //PIC Respond();
        //Chapter3t
        void ResetDeviceResp();
        void FWVerResp();
        void DeviceIDResp();
        void UsageTimeResp();
        void RobotSNResp();
        void ConfirmConnectResp();
        void RemoteStatusResp();
        //Chapter4
        void BatteryPart1Resp();
        void BatteryPart2Resp();
        void BatteryPart3Resp();
        void WheelSpeedResp();
        void ChargeStatusResp();
        void MoveDirectResp();
        void WheelMotorModeResp();
        void StopBtnStatusResp();
        void SleepBtnStatusResp();
        void ConnectStatusResp();
        void DockStatusResp();
        void DeviceEWResp();
        void USInfoResp();
        void IRStatus();
        void IMUInfoResp();
        void RFIDInfoResp();
        void MagInfoResp();
        void DigitalLEDStatusResp();
        void RGBLEDStatusResp();
        //Chapter5
        void SetMotor1Resp();
        void SetMotor2Resp();
        void SetMotor3Resp();
        void SetMotorSpecResp();
        //Chapter6
        void SetDigitalLEDResp();
        void SetRGBLEDResp();
        //Chapter7 
        void SetObsDisResp();
        void GetObsDisResp();
        //Chapter8 (undone)
        //Chapter9 (undone)
        void GetRealSpeedData(); 
};


#endif /* DEVICE_SERVICE_H */
