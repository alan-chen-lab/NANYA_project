#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Bool.h"
#include <sensor_msgs/LaserScan.h>
#include <cmath>
#include <sstream>

#define PI 3.14159265

ros::Subscriber scan;
ros::Publisher scan_emergency;
std_msgs::Bool trigger;


float max_d_;
float max_f_;
int continuous_points_;
float theta_;
float theta_resolution_;


void scanCallback (const sensor_msgs::LaserScan& scan_msg)
{
 float angle_min=scan_msg.angle_min;
 float angle_max=scan_msg.angle_max;
 float theta_resolution_=scan_msg.angle_increment;
 
 int detec_start=(-angle_min-3.14159265/2+theta_)/theta_resolution_-1;
 int detec_n=((3.14159265/2-theta_)*2)/theta_resolution_;

 std::vector<float> range=scan_msg.ranges;
 unsigned int n=scan_msg.ranges.size();

 float x0 = max_d_*cos(theta_);
 float y0 = max_d_*sin(theta_);
 float c = max_f_;
 float a = (y0-c)/(x0*x0);//y=ax^2+c use the parameter we gave to get the parameter a

 
 int count=0;
 int er=0; //obstacle shows up counter

 for (int i=detec_start;i<=(detec_start+detec_n);i++)
   {
    float x = range[i]*cos((theta_+count*theta_resolution_));//turn to x y
    float y = range[i]*sin((theta_+count*theta_resolution_));
    count++;
    if (y-a*(x*x)-c <= 0&&range[i]>scan_msg.range_min)//determin whether obstacle show up  in the caution area 
      {
       er++;

       if (er>=continuous_points_)
         {
          trigger.data=true;
          scan_emergency.publish(trigger);
          break;
         }
      }
    else if (i==(detec_start+detec_n))//reset counter
      {
       trigger.data=false;
       scan_emergency.publish(trigger);
       er=0;
      }
    else
      { 
       er=0;//reset counter

      }

   }

}


int main(int argc ,char** argv)
{
 ros::init(argc, argv, "scan_detection");
 ros::NodeHandle nh ("~");

 ros::Time last_time=ros::Time::now();
 ros::Rate loop_rate(15);

 scan= nh.subscribe("/laser/scan", 1, scanCallback);

 nh.param<float>("max_d", max_d_, 0.65);//meter
 nh.param<float>("max_f", max_f_, 1.2);
 nh.param<int>("continuous_points", continuous_points_,5);
 nh.param<float>("theta", theta_,30.0/180.0*3.14159);



 while (ros::ok())
  {

   scan_emergency=nh.advertise<std_msgs::Bool>("/scan_emergency",1);
   ros::spinOnce();
   loop_rate.sleep();
  }

 ros::spin();
 return 0;

}



  
