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
#include "BaseNode/BaseNode.hpp"
#include "ros/ros.h"
/* Defined Constants ---------------------------------------------------------*/


/* Macros --------------------------------------------------------------------*/

/* Type-Defines --------------------------------------------------------------*/

/* Global Variables ----------------------------------------------------------*/

/* Declaration of Exported Variables -----------------------------------------*/

/* Declaration of Exported Functions -----------------------------------------*/
int main(int argc, char** argv)
{
    ros::init(argc, argv, "BaseNode");
    ros::AsyncSpinner spinner(0);
    spinner.start();
    
    BaseNodeUtil Base;

    while (!Base.Initial())
    {
        //如果連不上的話, 過3秒重新連線
        std::cout << "Reconnection" <<std::endl;
        sleep(3);
    }
    
    ros::Rate loop_rate(100);
    Base.SetFirstPeriordallyReponse();

    std::cout << "BASE is Ready" <<std::endl;
    while(ros::ok())
    {
        ros::spinOnce();
        Base.UpDataandPublish();
        loop_rate.sleep();
    }
    ros::waitForShutdown();
    return 0;
    
}
