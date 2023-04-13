/*
 *******************************************************************************
 * File Name    : DeviceService.cpp
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
#include "BaseNode/DeviceService.hpp"
#include <time.h>

/* Defined Constants ---------------------------------------------------------*/
#define MIN_PROTOCOL_SIZE 7
#define TIME_FOR_WAIT_RESP 10 //unit:sec
/* Type Define ---------------------------------------------------------*/
namespace patch
{
    template < typename T > std::string to_string( const T& n )
    {
        std::ostringstream stm ;
        stm << n ;
        return stm.str();
    }
}

/* Global Variables ----------------------------------------------------------*/
uint8_t au8CRCTable[256] =
{
  0, 94, 188, 226, 97, 63, 221, 131, 194, 156, 126,
  32, 163, 253, 31, 65, 157, 195, 33, 127, 252,
  162, 64, 30, 95, 1, 227, 189, 62, 96, 130,
  220, 35, 125, 159, 193, 66, 28, 254, 160, 225,
  191, 93, 3, 128, 222, 60, 98, 190, 224, 2,
  92, 223, 129, 99, 61, 124, 34, 192, 158, 29,
  67, 161, 255, 70, 24, 250, 164, 39, 121, 155,
  197, 132, 218, 56, 102, 229, 187, 89, 7, 219,
  133, 103, 57, 186, 228, 6, 88, 25, 71, 165,
  251, 120, 38, 196, 154, 101, 59, 217, 135, 4,
  90, 184, 230, 167, 249, 27, 69, 198, 152, 122,
  36, 248, 166, 68, 26, 153, 199, 37, 123, 58,
  100, 134, 216, 91, 5, 231, 185, 140, 210, 48,
  110, 237, 179, 81, 15, 78, 16, 242, 172, 47,
  113, 147, 205, 17, 79, 173, 243, 112, 46, 204,
  146, 211, 141, 111, 49, 178, 236, 14, 80, 175,
  241, 19, 77, 206, 144, 114, 44, 109, 51, 209,
  143, 12, 82, 176, 238, 50, 108, 142, 208, 83,
  13, 239, 177, 240, 174, 76, 18, 145, 207, 45,
  115, 202, 148, 118, 40, 171, 245, 23, 73, 8,
  86, 180, 234, 105, 55, 213, 139, 87, 9, 235,
  181, 54, 104, 138, 212, 149, 203, 41, 119, 244,
  170, 72, 22, 233, 183, 85, 11, 136, 214, 52,
  106, 43, 117, 151, 201, 74, 20, 246, 168, 116,
  42, 200, 150, 21, 75, 169, 247, 182, 232, 10,
  84, 215, 137, 107, 53
};

/* Declaration of Local Functions -----------------------------------------*/
uint8_t CalCRC(uint8_t *au8CMD, uint8_t u8DataSize);

/* Definition of Exported Functions -----------------------------------------*/
bool DeviceService::Initial(ros::NodeHandle _node)
{
	Protocol.Initial();
	Model.Initial();

    //Protocol Buff
    for (int i = 0; i<1024; i++)
        gDeviceBuff[i] = 0;
    gu16DeviceHead = 0;

    //GetFlag
    gReportFlag.u8WheelReport = 0;
    gReportFlag.u8ChargeReport = 0;
    gReportFlag.u8FlagReport = 0;
    gReportFlag.u8IRReport = 0;
    gReportFlag.u8IMUReport = 0;
    gReportFlag.u8USReport = 0;
    gReportFlag.u8MSReport = 0;
    gReportFlag.u8RFIDReport = 0;

	gWaitReq = false;

	//SolveRecvBuff Timer
	RespTimer = _node.createTimer(ros::Duration(0.005), &DeviceService::RecvBufCallback, this);
	return ConnectDevice();

	
	
}

void DeviceService::RecvBufCallback(const ros::TimerEvent& event)
{
	vector<uint8_t>RecvByte = Protocol.RecvBytefromPIC();
    uint16_t RecvBtyeLength = RecvByte.size();
    uint16_t RecvByteHead = gu16DeviceHead;
	if (gu16DeviceHead > 1024)
		ROS_WARN("UART OVERFlow");
	else
	{
		for (int i = 0; i < RecvBtyeLength; i++)
			gDeviceBuff[RecvByteHead+i] = RecvByte[i];
		gu16DeviceHead = gu16DeviceHead + RecvBtyeLength;
	}	
    JudgeDeviceBuff();
}

void DeviceService::JudgeDeviceBuff()
{
    string WarnningFlag = "";
    while (gu16DeviceHead >= MIN_PROTOCOL_SIZE)
    {
        uint32_t u32CompleteProtocolLength = 4+gDeviceBuff[3];
        if ( gu16DeviceHead < u32CompleteProtocolLength)
        {
            //ROS_INFO_STREAM("UNDONE_PROTOCOL");
            //gsEWSInfo = WarnningFlag;
            return;
        }
        
        if (gDeviceBuff[0] == HEADER0 && gDeviceBuff[1] == HEADER1)
        {
            if(END == gDeviceBuff[3+gDeviceBuff[3]])
            {	
                //std::cout << std::hex << (CalCRC(gDeviceBuff, gDeviceBuff[3]+1) & 0xff) << std::endl; 
                if (CalCRC(gDeviceBuff, gDeviceBuff[3]+1) == gDeviceBuff[2+gDeviceBuff[3]])
                {
                    WarnningFlag = "";
                    //std::cout << std::hex << (gDeviceBuff[2] & 0xff)<< std::endl;
                    DeviceResp stCorrectResp;
                    stCorrectResp.Resp = gDeviceBuff[2];
                    stCorrectResp.RespCMD = gDeviceBuff[4];
                    // string sstr = "CORRECT_PROTOCOL:"+ patch::to_string(stCorrectResp.RespCMD);
                    // ROS_INFO_STREAM(sstr);
					//std::cout<<"CORRECT_PROTOCOL:"<< (int)stCorrectResp.RespCMD <<std::endl;
                    
					// gau8Info = *gDeviceBuff;
					// gRespCMD.push_back(stCorrectResp.RespCMD);
        	    bool Success = ProcessDevResp(stCorrectResp);
		    if (gWaitReq == true && Success == true)
		    {
                        gRespCMD.push_back(stCorrectResp.RespCMD);
			//for (int test = 0; test<gRespCMD.size()-1; test++)
			//{
				//std::cout<<(int)gRespCMD[test]<<std::endl;
			//}
		    }
                    DelRespinBuff();
                    //gsEWSInfo = WarnningFlag;
                    return;
                }
				else
				{
					ROS_WARN("PROTOCOL ERROR - CHECKSUM ERROR");
					// std::cout << std::hex << (int)CalCRC(gDeviceBuff, gDeviceBuff[3]+1) <<std::endl;
					// for (int x = 0; x < 15; x++)
					// 	std::cout << std::hex <<  (int)gDeviceBuff[x] << " ";
					// std::cout << std::endl;
					//std::cout << std::hex << (gDeviceBuff[3+gDeviceBuff[3]] & 0xff) << std::endl;
				}
            }
			else
			{
				ROS_WARN("PROTOCOL ERROR - END ERROR");
            	std::cout << std::hex << (gDeviceBuff[3+gDeviceBuff[3]] & 0xff) << std::endl;
			}
        }
		else
		{
			ROS_WARN("PROTOCOL ERROR - HEDAER ERROR");
			std::cout << std::hex << gDeviceBuff[1] << std::endl;
		}

        //收發正常時不會有ERROR_PROTOCOL
        DelFirstByteinBuff();
        // if (WarnningFlag != gsEWSInfo)
        //     ROS_WARN_STREAM(WarnningFlag);
        //gsEWSInfo = WarnningFlag;
        return;
    }
}

void DeviceService::DelRespinBuff()
{
    uint32_t u32CompleteProtocolLength = 4+gDeviceBuff[3];
    for (int j = 0; j<gu16DeviceHead ; j++)
    {
        gDeviceBuff[j] = gDeviceBuff[j+u32CompleteProtocolLength];
    } 
    gu16DeviceHead = gu16DeviceHead-u32CompleteProtocolLength;
}
void DeviceService::DelFirstByteinBuff()
{
    for (int j = 0; j<gu16DeviceHead ; j++)
    {
        gDeviceBuff[j] = gDeviceBuff[j+1];
    }
    gu16DeviceHead = gu16DeviceHead-1;
}
bool DeviceService::WaitforResp(uint8_t u8CheckCMDNo)
{
    gWaitReq = true;
    uint8_t u8GotReqLength = gRespCMD.size();
    for (int i = 0; i<u8GotReqLength; i++)
    {
        if (gRespCMD[i]==u8CheckCMDNo)
        {
            gWaitReq = false;
	    gRespCMD.erase(gRespCMD.begin(),gRespCMD.begin()+i+1);
	    //std::cout<<"get service response"<<std::endl;
            return false;
        }
    }
    //std::cout<<"Not get service response"<<std::endl;
    gRespCMD.erase(gRespCMD.begin(),gRespCMD.begin()+u8GotReqLength);
    return true;
}

bool DeviceService::ProcessDevResp(DeviceResp CorrectResp)
{
	switch(CorrectResp.Resp)
	{
		case(DEVICE_RESET_ACK):
			ResetDeviceResp();
		break;
		case(FW_VERSION_REPT):
			FWVerResp();
		break;
		case(DEVICE_ID_REPT):
			DeviceIDResp();
		break;
		case(USAGE_TIME_REPT):
			UsageTimeResp();
		break;
		case(ROBOT_SN_REPT):
			RobotSNResp();
		break;
		case(DEVICE_CONNECTION):
			ConfirmConnectResp();
		break;
		case(REMOTR_CONNECTION_STATUS):
			RemoteStatusResp();
		break;
		case(BATTERY_PART1_REPT):
			BatteryPart1Resp();
		break;
		case(BATTERY_PART2_REPT):
			BatteryPart2Resp();
		break;
		case(BATTERY_PART3_REPT):
			BatteryPart3Resp();
		break;
		case(WHEEL_SPEED_REPT):
			WheelSpeedResp();
		break;
		case(CHARGER_STATUS_REPT):
			ChargeStatusResp();
		break;
		case(MOVE_DIRECT_REPT):
			MoveDirectResp();
		break;
		case(WHEEL_MOTOR_MODE_REPT):
			WheelMotorModeResp();
		break;
		case(BTN_STATUS_REPT):
			 StopBtnStatusResp();
		break;
		case(SLEEP_BTN_STATUS_REPT):
			SleepBtnStatusResp();
		break;
		case(CONNECT_STATUS_REPT):
			ConnectStatusResp();
		break;
		case(DOCK_STATUS_REPT):
			DockStatusResp();
		break;
		case(DEVICE_EW_REPT):
			DeviceEWResp();
		break;
		case(US_INFO_REPT):
			USInfoResp();
		break;
		case(IR_STATUS_REPT):
			IRStatus();
		break;
		case(IMU_INFO_REPT):
			IMUInfoResp();
		break;
		case(RFID_INFO_REPT):
			RFIDInfoResp();
		break;
		case(MAG_INFO_REPT):
			MagInfoResp();
		break;
		case(DIGITAL_LED_STATUS_REPT):
			DigitalLEDStatusResp();
		break;
		case(RGB_LED_STATUS_REPT):
			RGBLEDStatusResp();
		break;
		case(WHEEL_MODE1_REPY):
			SetMotor1Resp();
		break;
		case(WHEEL_MODE2_REPY):
			SetMotor2Resp();
		break;
		case(WHEEL_MODE3_PEPY):
			SetMotor3Resp();
		break;
		case(WHEEL_SPECIAL_MODE_REPY):
			SetMotorSpecResp();
		break;
		case(DIGIAL_LED_REPY):
			SetDigitalLEDResp();
		break;
		case(RGB_LED_REPY):
			SetRGBLEDResp();
		break;
		case(SET_OBSTACLE_DISTANCE_REPY):
			SetObsDisResp();
		break;
		case(GET_OBSTACLE_DISTANCE_REPY):
			GetObsDisResp();
		break;
		default:
			return false;
		break;
	}
	return true;
}
bool DeviceService::ConfirmCMDSuccess(uint8_t u8CheckCMDNo)
{
    uint8_t u8GotReqLength = gRespCMD.size();
    for (int i = 0; i<u8GotReqLength; i++)
    {
        if (gRespCMD[i]==u8CheckCMDNo)
        {
            gRespCMD.clear();
            gRespCMD.erase(gRespCMD.begin(),gRespCMD.begin()+i);
            return true;
        }
    }
    gRespCMD.erase(gRespCMD.begin(),gRespCMD.begin()+u8GotReqLength);
    return false;
}

bool DeviceService::GetPICRecvCMD(uint8_t u8CheckCMDNo)
{
	clock_t start_t, end_t;
	start_t = clock();
	while(true)
	{
		end_t = clock();
		double dPassTime = (double)(end_t - start_t) / CLOCKS_PER_SEC;
		//std::cout << "dPassTime:" << dPassTime << std::endl;
		if (ConfirmCMDSuccess(u8CheckCMDNo))
		{
			break;
		}
		else if (dPassTime>TIME_FOR_WAIT_RESP)
		{
			ROS_WARN("Response Time Exception");
		  	return false;
		}
		
	}
    return true;
}
 
//SendByte;
bool DeviceService::ResetDevice()
{
    uint8_t au8CMD[6] = {0};
	uint8_t u8CRCResult = 0;
	au8CMD[0] = HEADER0;
	au8CMD[1] = HEADER1;
	au8CMD[2] = RESET_DEVICE;
	au8CMD[3] = 0x02;
	u8CRCResult = CalCRC(au8CMD, 3);
	au8CMD[4] = u8CRCResult;
	au8CMD[5] = END;
	Protocol.SendBytetoPIC(au8CMD, 6);
	return true;
	//return GetPICRecvCMD(au8CMD[2]);

}

bool DeviceService::ConnectDevice()
{
    uint8_t au8CMD[6] = {0};
	uint8_t u8CRCResult = 0;
	au8CMD[0] = HEADER0;
	au8CMD[1] = HEADER1;
	au8CMD[2] = CONNECT_DEVICE;
	au8CMD[3] = 0x02;
	u8CRCResult = CalCRC(au8CMD, 3);
	au8CMD[4] = u8CRCResult;
	au8CMD[5] = END;
    Protocol.SendBytetoPIC(au8CMD, 6);
	return true;
	//return GetPICRecvCMD(au8CMD[2]);
}
bool DeviceService::ConfirmConnect()
{
    bool bSuccess = true;
	uint8_t au8CMD[6] = {0};
	uint8_t u8CRCResult = 0;
	au8CMD[0] = HEADER0;
	au8CMD[1] = HEADER1;
	au8CMD[2] = CONFIRM_DEVICE_CONNECTION;
	au8CMD[3] = 0x02;
	u8CRCResult = CalCRC(au8CMD, 3);
	au8CMD[4] = u8CRCResult;
	au8CMD[5] = END;
	Protocol.SendBytetoPIC(au8CMD, 6);
	return true;
	//return GetPICRecvCMD(au8CMD[2]);
}
bool DeviceService::SendRemoteStatus(uint8_t u8Status)
{   
    uint8_t au8CMD[7] = {0};
	uint8_t u8CRCResult = 0;
	au8CMD[0] = HEADER0;
	au8CMD[1] = HEADER1;
	au8CMD[2] = SEND_REMOTE_STATUS;
	au8CMD[3] = 0x03;
	au8CMD[4] = u8Status;
	u8CRCResult = CalCRC(au8CMD, 4);
	au8CMD[5] = u8CRCResult;
	au8CMD[6] = END;
	Protocol.SendBytetoPIC(au8CMD, 7);
	return true;
	//return GetPICRecvCMD(au8CMD[2]);
}
//Chapter4
bool DeviceService::GetBatteryInfo(uint8_t u8BattNum)
{
    uint8_t au8CMD[7] = {0};
	uint8_t u8CRCResult = 0;
	uint8_t u8RespNum = 0;
	au8CMD[0] = HEADER0;
	au8CMD[1] = HEADER1;
	au8CMD[2] = BATTERY_INFO;
	au8CMD[3] = 0x03;
	au8CMD[4] = u8BattNum;
	u8CRCResult = CalCRC(au8CMD, 4);
	au8CMD[5] = u8CRCResult;
	au8CMD[6] = END;
	Protocol.SendBytetoPIC(au8CMD, 7);
	return true;
	//return GetPICRecvCMD(au8CMD[2]);
}

bool DeviceService::GetDataOnce(uint8_t u8Wheel, uint8_t u8Charger, uint8_t u8Flag, uint8_t u8US,uint8_t u8IR, uint8_t u8IMU, uint8_t u8RFID, uint8_t u8Mag)
{
    uint8_t au8CMD[14] = {0};
	uint8_t u8CRCResult = 0;
	au8CMD[0] = HEADER0;
	au8CMD[1] = HEADER1;
	au8CMD[2] = GET_DATA_ONCE;
	au8CMD[3] = 10;
	au8CMD[4] = u8Wheel;
	au8CMD[5] = u8Charger;
	au8CMD[6] = u8Flag;
	au8CMD[7] = u8US;
	au8CMD[8] = u8IR;
	au8CMD[9] = u8IMU;
	au8CMD[10] = u8RFID;
	au8CMD[11] = u8Mag;
	u8CRCResult = CalCRC(au8CMD, 11);
	au8CMD[12] = u8CRCResult;
	au8CMD[13] = END;
	Protocol.SendBytetoPIC(au8CMD, 14);
	return true;
	//return GetPICRecvCMD(au8CMD[2]);
}
bool DeviceService::GetDataPeriodically(uint8_t u8Wheel, uint8_t u8Charger, uint8_t u8Flag, uint8_t u8US, uint8_t u8IR, uint8_t u8IMU, uint8_t u8RFID, uint8_t u8Mag)
{   

	gReportFlag.u8WheelReport = u8Wheel;
	gReportFlag.u8ChargeReport = u8Charger;
	gReportFlag.u8FlagReport = u8Flag;
	gReportFlag.u8IRReport = u8IR;
	gReportFlag.u8IMUReport = u8IMU;
	gReportFlag.u8USReport = u8US;
	gReportFlag.u8MSReport = u8Mag;
	gReportFlag.u8RFIDReport = u8RFID;
	
	uint8_t au8CMD[14] = {0};
	uint8_t u8CRCResult = 0;
	au8CMD[0] = HEADER0;
	au8CMD[1] = HEADER1;
	au8CMD[2] = GET_DATA_PERIODICALLY;
	au8CMD[3] = 10;
	au8CMD[4] = u8Wheel;
	au8CMD[5] = u8Charger;
	au8CMD[6] = u8Flag;
	au8CMD[7] = u8US;
	au8CMD[8] = u8IR;
	au8CMD[9] = u8IMU;
	au8CMD[10] = u8RFID;
	au8CMD[11] = u8Mag;
	u8CRCResult = CalCRC(au8CMD, 11);
	au8CMD[12] = u8CRCResult;
	au8CMD[13] = END;
	Protocol.SendBytetoPIC(au8CMD, 14);
	return true;
	//return GetPICRecvCMD(au8CMD[2]);
}
bool DeviceService::GetTwoLEDStatus(uint8_t u8Led)
{
    bool bSuccess = true;
	uint8_t au8CMD[7] = {0};
	uint8_t u8CRCResult = 0;
	uint8_t u8RespNum = 0;
	au8CMD[0] = HEADER0;
	au8CMD[1] = HEADER1;
	au8CMD[2] = GET_LED_STATUS;
	au8CMD[3] = 0x03;
	au8CMD[4] = u8Led;
	u8CRCResult = CalCRC(au8CMD, 4);
	au8CMD[5] = u8CRCResult;
	au8CMD[6] = END;
	Protocol.SendBytetoPIC(au8CMD, 7);
	return true;
	//return GetPICRecvCMD(au8CMD[2]);
}
//Chapter5
bool DeviceService::MOTR_SetMotor1(uint8_t u8Vel, uint8_t u8AngVel, uint8_t u8Time)
{
    bool bSuccess = true;
    uint8_t au8CMD[9] = {0};
	uint8_t u8CRCResult = 0;
	au8CMD[0] = HEADER0;
	au8CMD[1] = HEADER1;
	au8CMD[2] = SET_WHEEL_BY_MODE_1;
	au8CMD[3] = 0x05;
	au8CMD[4] = u8Vel;
	au8CMD[5] = u8AngVel;
	au8CMD[6] = u8Time;
	u8CRCResult = CalCRC(au8CMD, 6);
	au8CMD[7] = u8CRCResult;
	au8CMD[8] = END;
	Protocol.SendBytetoPIC(au8CMD, 9);
	return true;
	//return GetPICRecvCMD(au8CMD[2]);
}
bool DeviceService::MOTR_SetMotor2(int8_t s8LeftVel, int8_t s8RightVel, uint8_t u8Time)
{
    bool bSuccess = true;
    uint8_t au8CMD[9] = {0};
	uint8_t u8CRCResult = 0;
	au8CMD[0] = HEADER0;
	au8CMD[1] = HEADER1;
	au8CMD[2] = SET_WHEEL_BY_MODE_2;
	au8CMD[3] = 0x05;
	au8CMD[4] = (s8LeftVel & 0xFF);
	au8CMD[5] = (s8RightVel & 0xFF);
	au8CMD[6] = u8Time;
	u8CRCResult = CalCRC(au8CMD, 6);
	au8CMD[7] = u8CRCResult;
	au8CMD[8] = END;
	Protocol.SendBytetoPIC(au8CMD, 9);
	return true;
	//return GetPICRecvCMD(au8CMD[2]);
}
bool DeviceService::MOTR_SetMotor3(int16_t s16Distance, int16_t s16Rotate, uint8_t u8Time)
{
    bool bSuccess = true;
    uint8_t au8CMD[11] = {0};
	uint8_t u8CRCResult = 0;
    au8CMD[0] = HEADER0;
    au8CMD[1] = HEADER1;
    au8CMD[2] = SET_WHEEL_BY_MODE_3;
    au8CMD[3] = 0x07;
    au8CMD[4] = (s16Distance >> 8) & 0xFF;
    au8CMD[5] = s16Distance & 0xFF;
    au8CMD[6] = (s16Rotate >> 8) & 0xFF;
    au8CMD[7] = s16Rotate & 0xFF;
    au8CMD[8] = u8Time;
	u8CRCResult = CalCRC(au8CMD, 8);
	au8CMD[9] = u8CRCResult;
	au8CMD[10] = END;
	Protocol.SendBytetoPIC(au8CMD, 11);
	return true;
	//return GetPICRecvCMD(au8CMD[2]);
}
bool DeviceService::MOTR_SetMotorSpec(uint8_t u8Mode)
{
	bool bSuccess = true;
	uint8_t u8CRCResult = 0;
    	uint8_t au8CMD[7] = {0};
	au8CMD[0] = HEADER0;
	au8CMD[1] = HEADER1;
	au8CMD[2] = SET_WHEEL_BY_SPECIAL_MODE;
	au8CMD[3] = 0x03;
	au8CMD[4] = u8Mode;
	u8CRCResult = CalCRC(au8CMD, 4);
	au8CMD[5] = u8CRCResult;
	au8CMD[6] = END;
	Protocol.SendBytetoPIC(au8CMD, 7);
	return true;
	//return GetPICRecvCMD(au8CMD[2]);
}
//Chapter6
bool DeviceService::SetDigitalLED(uint8_t u8Led1, uint8_t u8Led2, uint8_t u8Led1Time, uint8_t u8Led2Time)
{
    bool bSuccess = true;
	uint8_t au8CMD[10] = {0};
	uint8_t u8CRCResult = 0;
	au8CMD[0] = HEADER0;
	au8CMD[1] = HEADER1;
	au8CMD[2] = SET_DIGITAL_LED;
	au8CMD[3] = 0x06;
	au8CMD[4] = u8Led1;
	au8CMD[5] = u8Led2;
	au8CMD[6] = u8Led1Time;
	au8CMD[7] = u8Led2Time;
	u8CRCResult = CalCRC(au8CMD, 7);
	au8CMD[8] = u8CRCResult;
	au8CMD[9] = END;
	Protocol.SendBytetoPIC(au8CMD, 10);
	return true;
	//return GetPICRecvCMD(au8CMD[2]);
}
bool DeviceService::SetRGBLED(uint8_t u8StartBrightR, uint8_t u8StartBrightG, uint8_t u8StartBrightB, uint8_t u8EndBrightR, uint8_t u8EndBrightG, uint8_t u8EndBrightB, uint8_t u8Time, uint8_t u8CusTime)
{
    bool bSuccess = true;
	uint8_t au8CMD[14] = {0};
	uint8_t u8CRCResult = 0;
	au8CMD[0] = HEADER0;
	au8CMD[1] = HEADER1;
	au8CMD[2] = SET_RGB;
	au8CMD[3] = 0x0A;
	au8CMD[4] = u8StartBrightR;
	au8CMD[5] = u8StartBrightG;
	au8CMD[6] = u8StartBrightB;
	au8CMD[7] = u8EndBrightR;
	au8CMD[8] = u8EndBrightG;
	au8CMD[9] = u8EndBrightB;
	au8CMD[10] = u8Time;
	au8CMD[11] = u8CusTime;
	u8CRCResult = CalCRC(au8CMD, 11);
	au8CMD[12] = u8CRCResult;
	au8CMD[13] = END;
	Protocol.SendBytetoPIC(au8CMD, 14);
	return true;
	//return GetPICRecvCMD(au8CMD[2]);
}
bool DeviceService::SetObsDis(uint8_t u8USDis0, uint8_t u8USDis1, uint8_t u8USDis2, uint8_t u8USDis3, uint8_t u8USDis4, uint8_t u8USDis5, uint8_t u8USDis6)
{
    bool bSuccess = true;
	uint8_t au8CMD[13] = {0};
	uint8_t u8CRCResult = 0;
	au8CMD[0] = HEADER0;
	au8CMD[1] = HEADER1;
	au8CMD[2] = SET_OBSTACLE_DISTANCE;
	au8CMD[3] = 0x09;
	au8CMD[4] = u8USDis0;
	au8CMD[5] = u8USDis1;
	au8CMD[6] = u8USDis2;
	au8CMD[7] = u8USDis3;
	au8CMD[8] = u8USDis4;
	au8CMD[9] = u8USDis5;
	au8CMD[10] = u8USDis6;
	u8CRCResult = CalCRC(au8CMD, 10);
	au8CMD[11] = u8CRCResult;
	au8CMD[12] = END;
	Protocol.SendBytetoPIC(au8CMD, 13);
	return true;
	//return GetPICRecvCMD(au8CMD[2]);
}

bool DeviceService::GetObsDis()
{
    bool bSuccess = true;
	uint8_t au8CMD[6] = {0};
	uint8_t u8CRCResult = 0;
	au8CMD[0] = HEADER0;
	au8CMD[1] = HEADER1;
	au8CMD[2] = GET_OBSTACLE_DISTANCE;
	au8CMD[3] = 0x02;
	u8CRCResult = CalCRC(au8CMD, 3);
	au8CMD[4] = u8CRCResult;
	au8CMD[5] = END;
	Protocol.SendBytetoPIC(au8CMD, 6);
	return true;
	//return GetPICRecvCMD(au8CMD[2]);
}


//Resp
void DeviceService::ResetDeviceResp()
{
	//Do Nothing
}   
void DeviceService::FWVerResp()
{
	for (uint8_t i = 0; i < 4; i++)
	{
		Model.gDeviceInfo.au8FWVersion[i] = gDeviceBuff[2+3 + i];
	}
}

void DeviceService::DeviceIDResp()
{
	uint32_t u32Temp = 0;
	u32Temp = ((uint32_t)gDeviceBuff[2+3]) << 24;
	Model.gDeviceInfo.u32DeviceID = u32Temp;
	u32Temp = ((uint32_t)gDeviceBuff[2+4]) << 16;
	Model.gDeviceInfo.u32DeviceID = Model.gDeviceInfo.u32DeviceID + u32Temp;
	u32Temp = ((uint32_t)gDeviceBuff[2+5]) << 8;
	Model.gDeviceInfo.u32DeviceID = Model.gDeviceInfo.u32DeviceID + u32Temp;
	u32Temp = ((uint32_t)gDeviceBuff[2+6]);
	Model.gDeviceInfo.u32DeviceID = Model.gDeviceInfo.u32DeviceID + u32Temp;
}
void DeviceService::UsageTimeResp()
{
	uint16_t u16Temp = 0;
	u16Temp = ((uint16_t)gDeviceBuff[2+3]) << 8;
	Model.gDeviceInfo.u16UsageTimeDay = u16Temp;
	u16Temp = ((uint16_t)gDeviceBuff[2+4]);
	Model.gDeviceInfo.u16UsageTimeDay = Model.gDeviceInfo.u16UsageTimeDay + u16Temp;
	Model.gDeviceInfo.u8UsageTimeHour = gDeviceBuff[2+5];
	Model.gDeviceInfo.u8UsageTimeMinute = gDeviceBuff[2+6];
}
void DeviceService::RobotSNResp()
{
	for (uint8_t i = 0; i < 18; i++)
	{
		Model.gDeviceInfo.as8RobotSN[i] = gDeviceBuff[2+i + 3];
		//gsRobotSN = gsRobotSN + as8SN[i];
	}
}
void DeviceService::ConfirmConnectResp()
{
	Model.gDeviceInfo.u8ConfirmInnerConnect = gDeviceBuff[2+3];
	ROS_INFO_STREAM("CONFIRM ROS IS CONNECTING PIC DEVICE!!!");
}
void DeviceService::RemoteStatusResp()
{
	//This Command & Response is for M01E Arduino Version 
}
//Chapter4
void DeviceService::BatteryPart1Resp()
{
	uint16_t u16Temp = 0;
	int16_t s16Temp = 0;
	u16Temp = ((uint16_t)gDeviceBuff[2+3]) << 8;
	Model.gBatteryInfo.u16BatVol = u16Temp;
	u16Temp = ((uint16_t)gDeviceBuff[2+4]);
	Model.gBatteryInfo.u16BatVol = Model.gBatteryInfo.u16BatVol + u16Temp;

	s16Temp = ((int16_t)gDeviceBuff[2+5]) << 8;
	Model.gBatteryInfo.s16BatCur = s16Temp;
	s16Temp = ((int16_t)gDeviceBuff[2+6]);
	Model.gBatteryInfo.s16BatCur = Model.gBatteryInfo.s16BatCur + s16Temp;

	u16Temp = ((uint16_t)gDeviceBuff[2+7]) << 8;
	Model.gBatteryInfo.u16BatPer = u16Temp;
	u16Temp = ((uint16_t)gDeviceBuff[2+8]);
	Model.gBatteryInfo.u16BatPer = Model.gBatteryInfo.u16BatPer + u16Temp;

	u16Temp = ((uint16_t)gDeviceBuff[2+9]) << 8;
	Model.gBatteryInfo.u16BatCap = u16Temp;
	u16Temp = ((uint16_t)gDeviceBuff[2+10]);
	Model.gBatteryInfo.u16BatCap = Model.gBatteryInfo.u16BatCap + u16Temp;

	u16Temp = ((uint16_t)gDeviceBuff[2+11]) << 8;
	Model.gBatteryInfo.u16BatART = u16Temp;
	u16Temp = ((uint16_t)gDeviceBuff[2+12]);
	Model.gBatteryInfo.u16BatART = Model.gBatteryInfo.u16BatART + u16Temp;

	u16Temp = ((uint16_t)gDeviceBuff[2+13]) << 8;
	Model.gBatteryInfo.u16BatTemp = u16Temp;
	u16Temp = ((uint16_t)gDeviceBuff[2+14]);
	Model.gBatteryInfo.u16BatTemp = Model.gBatteryInfo.u16BatTemp + u16Temp;

	u16Temp = ((uint16_t)gDeviceBuff[2+15]) << 8;
	Model.gBatteryInfo.u16BatACT = u16Temp;
	u16Temp = ((uint16_t)gDeviceBuff[2+16]);
	Model.gBatteryInfo.u16BatACT = Model.gBatteryInfo.u16BatACT + u16Temp;
}
void DeviceService::BatteryPart2Resp()
{
	int16_t s16Temp = 0;
	s16Temp = ((int16_t)gDeviceBuff[2+3]) << 8;
	Model.gBatteryInfo.s16BatVol0 = s16Temp;
	s16Temp = ((int16_t)gDeviceBuff[2+4]);
	Model.gBatteryInfo.s16BatVol0 = Model.gBatteryInfo.s16BatVol0 + s16Temp;

	s16Temp = ((int16_t)gDeviceBuff[2+5]) << 8;
	Model.gBatteryInfo.s16BatVol1 = s16Temp;
	s16Temp = ((int16_t)gDeviceBuff[2+6]);
	Model.gBatteryInfo.s16BatVol1 = Model.gBatteryInfo.s16BatVol1 + s16Temp;

	s16Temp = ((int16_t)gDeviceBuff[2+7]) << 8;
	Model.gBatteryInfo.s16BatVol2 = s16Temp;
	s16Temp = ((int16_t)gDeviceBuff[2+8]);
	Model.gBatteryInfo.s16BatVol2 = Model.gBatteryInfo.s16BatVol2 + s16Temp;

	s16Temp = ((int16_t)gDeviceBuff[2+9]) << 8;
	Model.gBatteryInfo.s16BatVol3 = s16Temp;
	s16Temp = ((int16_t)gDeviceBuff[2+10]);
	Model.gBatteryInfo.s16BatVol3 = Model.gBatteryInfo.s16BatVol3 + s16Temp;

	s16Temp = ((int16_t)gDeviceBuff[2+11]) << 8;
	Model.gBatteryInfo.s16BatVol4 = s16Temp;
	s16Temp = ((int16_t)gDeviceBuff[2+12]);
	Model.gBatteryInfo.s16BatVol4 = Model.gBatteryInfo.s16BatVol4 + s16Temp;

	s16Temp = ((int16_t)gDeviceBuff[2+13]) << 8;
	Model.gBatteryInfo.s16BatVol5 = s16Temp;
	s16Temp = ((int16_t)gDeviceBuff[2+14]);
	Model.gBatteryInfo.s16BatVol5 = Model.gBatteryInfo.s16BatVol5 + s16Temp;

	s16Temp = ((int16_t)gDeviceBuff[2+15]) << 8;
	Model.gBatteryInfo.s16BatVol6 = s16Temp;
	s16Temp = ((int16_t)gDeviceBuff[2+16]);
	Model.gBatteryInfo.s16BatVol6 = Model.gBatteryInfo.s16BatVol6 + s16Temp;
}
void DeviceService::BatteryPart3Resp()
{
	uint16_t u16Temp = 0;
	u16Temp = ((uint16_t)gDeviceBuff[2+3]) << 8;
	Model.gBatteryInfo.u16BatSta = u16Temp;
	u16Temp = ((uint16_t)gDeviceBuff[2+4]);
	Model.gBatteryInfo.u16BatSta = Model.gBatteryInfo.u16BatSta + u16Temp;

	uint32_t u32Temp = 0;
	u32Temp = ((uint32_t)gDeviceBuff[2+5]) << 24;
	Model.gBatteryInfo.u32BatSftSta = u32Temp;
	u32Temp = ((uint32_t)gDeviceBuff[2+6]) << 16;
	Model.gBatteryInfo.u32BatSftSta = Model.gBatteryInfo.u32BatSftSta + u32Temp;
	u32Temp = ((uint32_t)gDeviceBuff[2+7]) << 8;
	Model.gBatteryInfo.u32BatSftSta = Model.gBatteryInfo.u32BatSftSta + u32Temp;
	u32Temp = ((uint32_t)gDeviceBuff[2+8]);
	Model.gBatteryInfo.u32BatSftSta = Model.gBatteryInfo.u32BatSftSta + u32Temp;

	u32Temp = ((uint32_t)gDeviceBuff[2+9]) << 24;
	Model.gBatteryInfo.u32BatPfSta = u32Temp;
	u32Temp = ((uint32_t)gDeviceBuff[2+10]) << 16;
	Model.gBatteryInfo.u32BatPfSta = Model.gBatteryInfo.u32BatPfSta + u32Temp;
	u32Temp = ((uint32_t)gDeviceBuff[2+11]) << 8;
	Model.gBatteryInfo.u32BatPfSta = Model.gBatteryInfo.u32BatPfSta + u32Temp;
	u32Temp = ((uint32_t)gDeviceBuff[2+12]);
	Model.gBatteryInfo.u32BatPfSta = Model.gBatteryInfo.u32BatPfSta + u32Temp;
}
void DeviceService::WheelSpeedResp()
{	
	uint16_t u16Temp1, u16Temp2 = 0;
	u16Temp1 = ((uint16_t)gDeviceBuff[2+3]) << 8;
	u16Temp2 = ((uint16_t)gDeviceBuff[2+4]);
	Model.gDeviceStatus.s16BodyVel = u16Temp1 + u16Temp2;

	u16Temp1 = ((uint16_t)gDeviceBuff[2+5]) << 8;
	u16Temp2 = ((uint16_t)gDeviceBuff[2+6]);
	Model.gDeviceStatus.s16BodyAngVel = u16Temp1 + u16Temp2;

	u16Temp1 = ((uint16_t)gDeviceBuff[2+7]) << 8;
	u16Temp2 = ((uint16_t)gDeviceBuff[2+8]);
	Model.gDeviceStatus.u16LeftWheelEnc = u16Temp1 + u16Temp2;

	u16Temp1 = ((uint16_t)gDeviceBuff[2+9]) << 8;
	u16Temp2 = ((uint16_t)gDeviceBuff[2+10]);
	Model.gDeviceStatus.u16RightWheelEnc = u16Temp1 + u16Temp2;
}
void DeviceService::ChargeStatusResp()
{
	Model.gDeviceStatus.u8ChargeStatus = gDeviceBuff[2+3];
}
void DeviceService::MoveDirectResp()
{
	Model.gDeviceStatus.u8MoveDirect = gDeviceBuff[2+3];
}
void DeviceService::WheelMotorModeResp()
{
	Model.gDeviceStatus.u8WheelMotorMode = gDeviceBuff[2+3];
}
void DeviceService::StopBtnStatusResp()
{
	Model.gDeviceStatus.u8StopBtnStatus = gDeviceBuff[2+3];
}
void DeviceService::SleepBtnStatusResp()
{
	Model.gDeviceStatus.u8SleepBtnStatus = gDeviceBuff[2+3];
}
void DeviceService::ConnectStatusResp()
{
	Model.gDeviceStatus.u8ConnectStatus = gDeviceBuff[2+3];
}
	
void DeviceService::DockStatusResp()
{
	Model.gDeviceStatus.u8DockStatus = gDeviceBuff[2+3];
}
void DeviceService::DeviceEWResp()
{
	uint32_t u32Temp = 0;
	u32Temp = ((uint32_t)gDeviceBuff[2+3]) << 24;
	Model.gDeviceStatus.u32ErrorWarning = u32Temp;
	u32Temp = ((uint32_t)gDeviceBuff[2+4]) << 16;
	Model.gDeviceStatus.u32ErrorWarning = Model.gDeviceStatus.u32ErrorWarning + u32Temp;
	u32Temp = ((uint32_t)gDeviceBuff[2+5]) << 8;
	Model.gDeviceStatus.u32ErrorWarning = Model.gDeviceStatus.u32ErrorWarning + u32Temp;
	u32Temp = ((uint32_t)gDeviceBuff[2+6]);
	Model.gDeviceStatus.u32ErrorWarning = Model.gDeviceStatus.u32ErrorWarning + u32Temp;

	if((0 != Model.gDeviceStatus.u32ErrorWarning))
	{	//PIC has error and warning.
		ROS_ERROR("PIC Error Warning");
		//EWS_ProcessPICEW(Model.gDeviceStatus.u32ErrorWarning);
	}
}	
void DeviceService::USInfoResp()
{
	for (uint8_t i = 0; i < 7; i++)
	{
		Model.gDeviceStatus.au8US[i] = gDeviceBuff[2+3 + i];
	}
}
void DeviceService::IRStatus()
{
	for (uint8_t i = 0; i < 2; i++)
	{
		Model.gDeviceStatus.au8IR[i] = gDeviceBuff[2+3 + i];
	}
}
void DeviceService::DeviceService::IMUInfoResp()
{
	int16_t s16Temp = 0;
	int16_t s16Result = 0;
	uint8_t j = 0;
	for (uint8_t i = 0; i < 6; i++)
	{
		Model.gDeviceStatus.as16IMU[i] =(((int16_t)gDeviceBuff[2+3 + j]) << 8) + ((int16_t)gDeviceBuff[2+4 + j]);
		j = j + 2;
	}
}
void DeviceService::RFIDInfoResp()
{
	Model.gDeviceStatus.bRFIDStatus = gDeviceBuff[2+12];
	Model.gDeviceStatus.u8RFIDLen = gDeviceBuff[2+3];
	for (uint8_t i = 0; i < 8; i++)
	{
		Model.gDeviceStatus.au8RFID[i] = gDeviceBuff[2+i + 4];
	}
}
void DeviceService::MagInfoResp()
{
	uint8_t u8Temp = 0;
	u8Temp = gDeviceBuff[2+4];//Byte08: Cell15-Cell8
	//Monitor.print("Mag15: ");
	//Monitor.println(u8Temp);
	//u8Temp1=gDeviceBuff[2+3];
	for (uint8_t i = 15; i > 7; i--)
	{
		//Model.gDeviceStatu.au8Mag[i] =  (0x01 == (u8Temp & 0x01)) ? 1 : 0;
		Model.gDeviceStatus.au8Mag[i] =  u8Temp & 0x01;
		u8Temp = u8Temp >> 1;
	}
	u8Temp = gDeviceBuff[2+3];//Byte07: Cell7-Cell1
	//Monitor.print("Mag7: ");
	//Monitor.println(u8Temp);
	for (uint8_t i = 7; i > 0; i--)//ignore 0
	{
		//Model.gDeviceStatu.au8Mag[i] =  (0x01 == (u8Temp & 0x01)) ? 1 : 0;
		Model.gDeviceStatus.au8Mag[i] =  u8Temp & 0x01;
		u8Temp = u8Temp >> 1;
	}

}
void DeviceService::DigitalLEDStatusResp()
{
	//std::cout<<"Updata LED"<<std::endl;	
	Model.gDeviceStatus.au8DigitalLED0 = gDeviceBuff[2+3];
	Model.gDeviceStatus.au8DigitalLED1 = gDeviceBuff[2+4];

}
void DeviceService::RGBLEDStatusResp()
{
	//std::cout<<"Updata RGB"<<std::endl;
	Model.gDeviceStatus.au8RGBLEDRed = gDeviceBuff[2+3];
	Model.gDeviceStatus.au8RGBLEDGreen = gDeviceBuff[2+4];
	Model.gDeviceStatus.au8RGBLEDBlue = gDeviceBuff[2+5];
}
//Chapter5
void DeviceService::SetMotor1Resp()
{	
	//do nothing
}
void DeviceService::SetMotor2Resp()
{
	//do nothing
}
void DeviceService::SetMotor3Resp()
{
	//do nothing
}
void DeviceService::SetMotorSpecResp()
{
	//do nothing
}
//Chapter6
void DeviceService::SetDigitalLEDResp()
{
	//do nothing
}
void DeviceService::SetRGBLEDResp()
{
	//do nothing
}
//Chapter7 (undone)
void DeviceService::SetObsDisResp()
{
	Model.gDeviceStatus.au8ObstacleDistance[0] = gDeviceBuff[2+3];
	Model.gDeviceStatus.au8ObstacleDistance[1] = gDeviceBuff[2+4];
	Model.gDeviceStatus.au8ObstacleDistance[2] = gDeviceBuff[2+5];
	Model.gDeviceStatus.au8ObstacleDistance[3] = gDeviceBuff[2+6];
	Model.gDeviceStatus.au8ObstacleDistance[4] = gDeviceBuff[2+7];
	Model.gDeviceStatus.au8ObstacleDistance[5] = gDeviceBuff[2+8];
	Model.gDeviceStatus.au8ObstacleDistance[6] = gDeviceBuff[2+9];
}
void DeviceService::GetObsDisResp()
{
	Model.gDeviceStatus.au8ObstacleDistance[0] = gDeviceBuff[2+3];
	Model.gDeviceStatus.au8ObstacleDistance[1] = gDeviceBuff[2+4];
	Model.gDeviceStatus.au8ObstacleDistance[2] = gDeviceBuff[2+5];
	Model.gDeviceStatus.au8ObstacleDistance[3] = gDeviceBuff[2+6];
	Model.gDeviceStatus.au8ObstacleDistance[4] = gDeviceBuff[2+7];
	Model.gDeviceStatus.au8ObstacleDistance[5] = gDeviceBuff[2+8];
	Model.gDeviceStatus.au8ObstacleDistance[6] = gDeviceBuff[2+9];	
}
//Chapter8 (undone)
//Chapter9 (undone)
void DeviceService::GetRealSpeedData()
{

}

/* Definition of Local Functions -----------------------------------------*/
uint8_t CalCRC(uint8_t *au8CMD, uint8_t u8DataSize)
{
  uint8_t u8CRCResult = 0;
  for (uint8_t i = 2; i <= u8DataSize; i++)
  {
    u8CRCResult = u8CRCResult ^ au8CMD[i];
    u8CRCResult = au8CRCTable[u8CRCResult];
  }
  return u8CRCResult;
}
