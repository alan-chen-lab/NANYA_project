#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sensor_msgs/LaserScan.h>
#include <cmath>
#include <sstream>


ros::Subscriber scan;
ros::Publisher scan_filter;

float max_intensity_;
float min_intensity_;
int continuous_points_;
int dr_error_;


void scanCallback (const sensor_msgs::LaserScan& scan_msg)
{
 sensor_msgs::LaserScan laser_filtered;
 std::vector<float> range;
 std::vector<float> intensity;

 range=scan_msg.ranges;
 intensity=scan_msg.intensities;
 unsigned int n=scan_msg.ranges.size();
 
 std::vector<float> range_filtered(n,0);
 std::vector<float> intensity_filtered(n,0);
 std::vector<float> initial_array(n,0);
 laser_filtered=scan_msg;
 int count=0;

 for (int i=0;i<n;i++)
   {
    if (intensity[i]>min_intensity_&&intensity[i]<max_intensity_)
      {
       intensity_filtered[i]=intensity[i];
       range_filtered[i]=range[i];
       count++;
      }
    else if (count>continuous_points_)
      { 
       
       int m=count/2;
       int b_count=0 , f_count=0;
       float std_dr=range_filtered[i-m]-range_filtered[i-m-1];
       int flag[2]={0};
       for (int j=0;j<m;j++)
         {
          int dr_b=abs(range_filtered[i-1-j]-range_filtered[i-2-j]);
          int dr_f=abs(range_filtered[i-count+1+j]-range_filtered[i-count+j]);
          
          if (abs(dr_b-std_dr)/std_dr>dr_error_ && flag[0]==0)
            {
             range_filtered[i-1-j]=0;
             intensity_filtered[i-1-j]=0;
             b_count++;
            }
          else 
            {
             flag[0]=1;
            }

          if (abs(dr_f-std_dr)/std_dr>dr_error_ && flag[1]==0)
            {
             range_filtered[i-count+j]=0;
             intensity_filtered[i-count+j]=0;
             f_count++;
            }
          else 
            {
             flag[1]=1;
            }
          }
          
       if (count-b_count-f_count>continuous_points_)
         {
          laser_filtered.intensities=intensity_filtered;
          laser_filtered.ranges=range_filtered;
          scan_filter.publish(laser_filtered);
          ROS_INFO("%d",count);
          ROS_INFO("%d",count-b_count-f_count);
          break;
         }
      }
    else
      { 
       count=0;
       range_filtered=initial_array;
       intensity_filtered=initial_array;
      }

   }

}


int main(int argc ,char** argv)
{
 ros::init(argc, argv, "scan_filter");
 ros::NodeHandle nh ("~");

 ros::Time last_time=ros::Time::now();
 ros::Rate loop_rate(15);

 scan= nh.subscribe("/laser/scan", 1, scanCallback);

 nh.param<float>("max_intensity", max_intensity_, 250.0);
 nh.param<float>("min_intensity", min_intensity_, 240.0);
 nh.param<int>("continuous_points", continuous_points_,15);
 nh.param<int>("dr_error", dr_error_,10);

 while (ros::ok())
  {

   scan_filter=nh.advertise<sensor_msgs::LaserScan>("/scan_filter",1);
   ros::spinOnce();
   loop_rate.sleep();
  }

 ros::spin();
 return 0;

}



  
