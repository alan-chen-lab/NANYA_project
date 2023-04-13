#ifndef REFLECTOR_TF_H
#define REFLECTOR_TF_H

#include <ros/ros.h>
#include "sensor_msgs/LaserScan.h"
#include <tf/transform_broadcaster.h>

class ReadLaserData{
  public:
    ReadLaserData();
    void execute(void);

  private:
    bool initial_;
    float min_angle_;
    float angle_increment_;
    std::string topic_name_;
    std::string parent_link_;
    std::string child_link_;
    double node_rate_;
    ros::NodeHandle nh_;
    ros::Rate rate_;
    ros::Subscriber laserScanSub;
    void scanLaserData(const sensor_msgs::LaserScan::ConstPtr& scan_in);

 };
#endif //REFLECTOR_TF_H
