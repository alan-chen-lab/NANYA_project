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
\

/* Includes ------------------------------------------------------------------*/
#include <BaseNode/DeviceProtocol.hpp>
#include <serial/serial.h>

/* Defined Constants ---------------------------------------------------------*/


/* Macros --------------------------------------------------------------------*/


/* Type-Defines --------------------------------------------------------------*/


/* Global Variables ----------------------------------------------------------*/
serial::Serial sp;

/* Declaration of Exported Variables -----------------------------------------*/
void DeviceProtocol::Initial()
{
    SerialInitial();
}


/* Declaration of Exported Functions -----------------------------------------*/
bool DeviceProtocol::SerialInitial()
{
    if (!sp.isOpen())
    {
        //timeout
        serial::Timeout to = serial::Timeout::simpleTimeout(100);
        //serial name
        sp.setPort("/dev/ttyUSB-pic32");
        //setBaudrate
        sp.setBaudrate(115200);
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
            ROS_INFO_STREAM("/dev/ttyUSB-pic32 is opened!!");
        }
        else
        {
            return false;
        }
    }

    
    
    
    return true;
}

void DeviceProtocol::SendBytetoPIC(uint8_t *au8CMD, uint8_t u8Len)
{
    sp.write(au8CMD, u8Len);
}

vector<uint8_t> DeviceProtocol::RecvBytefromPIC()
{
    size_t n = sp.available();
    vector<uint8_t> RecvByte;
    if (n!=0)
    {
        uint8_t buffer[1024];
        n = sp.read(buffer, n);
        for(int i = 0; i<n; i++)
        {
            RecvByte.push_back(buffer[i] & 0xff);
        }
    }
    return RecvByte;
}



