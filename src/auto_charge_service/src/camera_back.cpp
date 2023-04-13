#include <cv_bridge/cv_bridge.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <ros/ros.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/aruco.hpp>
#include <opencv2/calib3d/calib3d.hpp>
#include <sstream>
#include <string>
#include <cstdlib>
#include <iostream>
#include <math.h>
#include "auto_charge_service/aurco_info.h" // for aurco info msg
//#define PI()  4*atan(1)

int main(int argc, char **argv)
{
  ros::init(argc, argv, "camera_back");
  ros::NodeHandle nh; // Default handler for nodes in ROS

  // 0 reads from your default camera
  const int CAMERA_INDEX = 0;
  cv::VideoCapture capture(CAMERA_INDEX);
  if (!capture.isOpened())
  {
    ROS_ERROR_STREAM("Failed to open camera with index " << CAMERA_INDEX << "!");
    ros::shutdown();
  }

  // Image_transport is responsible for publishing and subscribing to Images
  image_transport::ImageTransport it(nh);

  // Publish to the /camera topic
  image_transport::Publisher pub_frame = it.advertise("camera", 1);

  ros::Publisher Marker_pub = nh.advertise<auto_charge_service::aurco_info>("aruco_pose", 1); // 發布aruco資訊

  cv::Mat frame; // Mat is the image class defined in OpenCV
  sensor_msgs::ImagePtr msg;

  ros::Rate loop_rate(10);

  //調解解析度
  capture.set(CV_CAP_PROP_FRAME_WIDTH, 1920);
  capture.set(CV_CAP_PROP_FRAME_HEIGHT, 1080);
  int j = 0;
  while (nh.ok())
  {

    // Load image determine
    capture >> frame;

    // Check if grabbed frame has content
    if (frame.empty())
    {
      ROS_ERROR_STREAM("Failed to capture image!");
      ros::shutdown();
    }

    // aruco
    // 1. Marker Creation
    cv::Mat markerImage;
    cv::Ptr<cv::aruco::Dictionary> dictionary = cv::aruco::getPredefinedDictionary(cv::aruco::DICT_5X5_250);
    cv::aruco::drawMarker(dictionary, 4, 200, markerImage, 1);

    cv::Mat imageCopy;

    // c++ array --> opencv inputarray
    int row = 3, col = 3, row1 = 5;
    // float array[row][col] = {{100, 0, 960}, {0, 100, 540}, {0, 0, 1}};
    // float array[row][col] = {{392.92415261, 0, 960}, {0, 465.88731778, 540}, {0, 0, 1}};
    float array[row][col] = {{1.58533843e+03, 0, 9.44833439e+02}, {0, 1.57941285e+03, 5.60897986e+02}, {0, 0, 1}};
    cv::Mat cameraMatrix = cv::Mat(row, col, CV_32F, array); // CV_32F 為 float 格式

    // float array1[row1] = {2.04460284e-01, -8.56282932e-01, 5.14846443e-04, -4.03631935e-03, 6.26151791e-01};
    float array1[row1] = {0.21165859, -0.51099311, 0.00114376, -0.00081536, 0.38941034};
    cv::Mat distCoeffs = cv::Mat(row1, 0, CV_32F, array1); // CV_32F 為 float 格式

    // cv::Mat cameraMatrix, distCoeffs;
    // readCameraParameters(cameraMatrix, distCoeffs);
    // cv::Ptr<cv::aruco::Dictionary> dictionary = cv::aruco::getPredefinedDictionary(cv::aruco::DICT_5X5_250);
    capture.retrieve(frame);
    // frame --> imagecopy
    frame.copyTo(imageCopy);

    std::vector<int> ids;
    std::vector<std::vector<cv::Point2f> > corners;
    // 2. detectMarkers
    cv::aruco::detectMarkers(frame, dictionary, corners, ids);

    // if at least one marker detected
    if (ids.size() > 0)
    {
      bool a = true;

      std::stringstream temp_vecter_x, temp_vecter_y, temp_vecter_z; // x, y, z 11
      double x, y, z;
      std::string vecter_x, vecter_y, vecter_z;

      float theta_x1, theta_y1, theta_z1; // Euler angles 11
      std::stringstream tmp_roll, tmp_pitch, tmp_yaw;
      std::string roll, pitch, yaw;

      std::stringstream temp_vecter_x_12, temp_vecter_y_12, temp_vecter_z_12; // x, y, z 12
      double x_12, y_12, z_12;
      std::string vecter_x_12, vecter_y_12, vecter_z_12;

      float theta_x1_12, theta_y1_12, theta_z1_12; // Euler angles 12
      std::stringstream tmp_roll_12, tmp_pitch_12, tmp_yaw_12;
      std::string roll_12, pitch_12, yaw_12;

      double averange_x, averange_y, averange_z;  // 11 + 12 / 2
      float averange_theta_x, averange_theta_y, averange_theta_z;

      int n = ids.size();
      int arr[n];
      for (int i = 0; i < n; i++)
      {
        arr[i] = ids[i];
        if (arr[i] == 11)
        {
          // drawMrkers
          cv::aruco::drawDetectedMarkers(imageCopy, corners, ids);

          // Pose Estimation
          std::vector<cv::Vec3d> rvecs, tvecs; //角上每個標記的旋轉和平移向量
          cv::aruco::estimatePoseSingleMarkers(corners, 0.078, cameraMatrix, distCoeffs, rvecs, tvecs);
          // cv::aruco::estimatePoseSingleMarkers(corners, 0.099, cameraMatrix, distCoeffs, rvecs, tvecs);
          // draw axis for each marker
          // std::stringstream temp_vecter_x, temp_vecter_y, temp_vecter_z;
          // double x, y, z;
          // std::string vecter_x, vecter_y, vecter_z;
          cv::Mat rotationMatrix = (cv::Mat_<float>(3, 3) << 0, 0, 0, 0, 0, 0, 0, 0, 0); // rotationMatrix
          // float theta_x1, theta_y1, theta_z1;                                            // Euler angles
          // std::stringstream tmp_roll, tmp_pitch, tmp_yaw;
          // std::string roll, pitch, yaw;
          for (int j = 0; j < 1; j++)
          {
            cv::aruco::drawAxis(imageCopy, cameraMatrix, distCoeffs, rvecs[i], tvecs[i], 0.1);
            cv::Vec3d tmp = tvecs[i]; // Vec3d = type
            x = tmp[0];
            y = tmp[1];
            z = tmp[2];
            // vextor_x, vextor_y, vextor_z
            temp_vecter_x << x;
            temp_vecter_x >> vecter_x;
            temp_vecter_y << y;
            temp_vecter_y >> vecter_y;
            temp_vecter_z << z;
            temp_vecter_z >> vecter_z;

            // rotation vextor --> rotation matrix
            if (ids[i] > 20)
              continue;
            try
            {
              cv::Rodrigues(rvecs[i], rotationMatrix); // rotationMatrix(3*3)
            }
            catch (const std::exception &e)
            {
              ROS_ERROR("%s", e.what());
            }
            // rotationMatrix --> Euler angles
            if (rotationMatrix.at<double>(2, 0) != 1 && rotationMatrix.at<double>(2, 0) != -1)
            {

              theta_y1 = -asin(rotationMatrix.at<double>(2, 0));
              // theta_y2 = PI() - theta_y1;
              theta_x1 = atan2((rotationMatrix.at<double>(2, 1) / cos(theta_y1)), (rotationMatrix.at<double>(2, 2) / cos(theta_y1)));
              // theta_x2 = atan2((rotationMatrix[2][1]/cos(theta_y2)), (rotationMatrix[2][2]/cos(theta_y2)));
              theta_z1 = atan2((rotationMatrix.at<double>(1, 0) / cos(theta_y1)), (rotationMatrix.at<double>(0, 0) / cos(theta_y1)));
              // theta_z2 = atan2((rotationMatrix[1][0]/cos(theta_y2)), (rotationMatrix[0][0]/cos(theta_y2)));
            }
            else
            {
              theta_z1 = 0;
              if (rotationMatrix.at<double>(2, 0) == -1)
              {
                theta_y1 = M_PI / 2;
                theta_x1 = theta_z1 + atan2(rotationMatrix.at<double>(0, 1), rotationMatrix.at<double>(0, 2));
              }
              else
              {
                theta_y1 = -M_PI / 2;
                theta_x1 = -theta_z1 + atan2(-rotationMatrix.at<double>(0, 1), -rotationMatrix.at<double>(0, 2));
              }
            }
            // theta_x1, theta_y1, theta_z1 = roll, pitch, yaw
            // Euler angles --> degrees
            theta_x1 = theta_x1 * 180.0 / M_PI;
            theta_y1 = theta_y1 * 180.0 / M_PI;
            theta_z1 = theta_z1 * 180.0 / M_PI;
            // if( theta_x1 < 0 )
            //   theta_x1 += 360.0;

            // if( theta_y1 < 0 )
            //   theta_y1 += 360.0;

            // if( theta_z1 < 0 )
            //   theta_z1 += 360.0;
            tmp_roll << theta_x1;
            tmp_roll >> roll;
            tmp_pitch << theta_y1;
            tmp_pitch >> pitch;
            tmp_yaw << theta_z1;
            tmp_yaw >> yaw;
          }
        }
        else if (arr[i] == 12)
        {
          // drawMrkers
          cv::aruco::drawDetectedMarkers(imageCopy, corners, ids);

          // Pose Estimation
          std::vector<cv::Vec3d> rvecs, tvecs; //角上每個標記的旋轉和平移向量
          cv::aruco::estimatePoseSingleMarkers(corners, 0.078, cameraMatrix, distCoeffs, rvecs, tvecs);
          // cv::aruco::estimatePoseSingleMarkers(corners, 0.099, cameraMatrix, distCoeffs, rvecs, tvecs);
          // draw axis for each marker
          // std::stringstream temp_vecter_x, temp_vecter_y, temp_vecter_z;
          // double x, y, z;
          // std::string vecter_x, vecter_y, vecter_z;
          cv::Mat rotationMatrix = (cv::Mat_<float>(3, 3) << 0, 0, 0, 0, 0, 0, 0, 0, 0); // rotationMatrix
          // float theta_x1, theta_y1, theta_z1;                                            // Euler angles
          // std::stringstream tmp_roll, tmp_pitch, tmp_yaw;
          // std::string roll, pitch, yaw;
          for (int j = 0; j < 1; j++)
          {
            cv::aruco::drawAxis(imageCopy, cameraMatrix, distCoeffs, rvecs[i], tvecs[i], 0.1);
            cv::Vec3d tmp = tvecs[i]; // Vec3d = type
            x_12 = tmp[0];
            y_12 = tmp[1];
            z_12 = tmp[2];
            // vextor_x, vextor_y, vextor_z
            temp_vecter_x_12 << x_12;
            temp_vecter_x_12 >> vecter_x_12;
            temp_vecter_y_12 << y_12;
            temp_vecter_y_12 >> vecter_y_12;
            temp_vecter_z_12 << z_12;
            temp_vecter_z_12 >> vecter_z_12;

            // rotation vextor --> rotation matrix
            if (ids[i] > 20)
              continue;
            try
            {
              cv::Rodrigues(rvecs[i], rotationMatrix); // rotationMatrix(3*3)
            }
            catch (const std::exception &e)
            {
              ROS_ERROR("%s", e.what());
            }
            // rotationMatrix --> Euler angles
            if (rotationMatrix.at<double>(2, 0) != 1 && rotationMatrix.at<double>(2, 0) != -1)
            {

              theta_y1_12 = -asin(rotationMatrix.at<double>(2, 0));
              // theta_y2 = PI() - theta_y1;
              theta_x1_12 = atan2((rotationMatrix.at<double>(2, 1) / cos(theta_y1_12)), (rotationMatrix.at<double>(2, 2) / cos(theta_y1_12)));
              // theta_x2 = atan2((rotationMatrix[2][1]/cos(theta_y2)), (rotationMatrix[2][2]/cos(theta_y2)));
              theta_z1_12 = atan2((rotationMatrix.at<double>(1, 0) / cos(theta_y1_12)), (rotationMatrix.at<double>(0, 0) / cos(theta_y1_12)));
              // theta_z2 = atan2((rotationMatrix[1][0]/cos(theta_y2)), (rotationMatrix[0][0]/cos(theta_y2)));
            }
            else
            {
              theta_z1_12 = 0;
              if (rotationMatrix.at<double>(2, 0) == -1)
              {
                theta_y1_12 = M_PI / 2;
                theta_x1_12 = theta_z1_12 + atan2(rotationMatrix.at<double>(0, 1), rotationMatrix.at<double>(0, 2));
              }
              else
              {
                theta_y1_12 = -M_PI / 2;
                theta_x1_12 = -theta_z1_12 + atan2(-rotationMatrix.at<double>(0, 1), -rotationMatrix.at<double>(0, 2));
              }
            }
            // theta_x1, theta_y1, theta_z1 = roll, pitch, yaw
            // Euler angles --> degrees
            theta_x1_12 = theta_x1_12 * 180.0 / M_PI;
            theta_y1_12 = theta_y1_12 * 180.0 / M_PI;
            theta_z1_12 = theta_z1_12 * 180.0 / M_PI;
            // if( theta_x1 < 0 )
            //   theta_x1 += 360.0;

            // if( theta_y1 < 0 )
            //   theta_y1 += 360.0;

            // if( theta_z1 < 0 )
            //   theta_z1 += 360.0;
            tmp_roll_12 << theta_x1_12;
            tmp_roll_12 >> roll_12;
            tmp_pitch_12 << theta_y1_12;
            tmp_pitch_12 >> pitch_12;
            tmp_yaw_12 << theta_z1_12;
            tmp_yaw_12 >> yaw_12;
          }
        }
      }
      // 將兩aruco值除2 
      averange_x = (x + x_12) / 2;
      averange_y = (y + y_12) / 2;
      averange_z = (z + z_12) / 2;
      averange_theta_x = (theta_x1 + theta_x1_12) / 2;
      averange_theta_y = (theta_y1 + theta_y1_12) / 2;
      averange_theta_z = (theta_z1 + theta_z1_12) / 2;

      // 定義msg為aruco資訊, if size<2, no publish
      if (ids.size() == 2){
        auto_charge_service::aurco_info msg;
        msg.x = averange_x;
        msg.y = averange_y;
        msg.z = averange_z;
        msg.roll = averange_theta_x;
        msg.pitch = averange_theta_y;
        msg.yaw = averange_theta_z;
        msg.get_aruco = a;
        Marker_pub.publish(msg); //傳送msg
      }
      // auto_charge_service::aurco_info msg;
      // msg.x = averange_x;
      // msg.y = averange_y;
      // msg.z = averange_z;
      // msg.roll = averange_theta_x;
      // msg.pitch = averange_theta_y;
      // msg.yaw = averange_theta_z;
      // msg.get_aruco = a;
      // Marker_pub.publish(msg); //傳送msg

      // tmp_roll << theta_x1;
      // tmp_roll >> roll;
      // tmp_pitch << theta_y1;
      // tmp_pitch >> pitch;
      // tmp_yaw << theta_z1;
      // tmp_yaw >> yaw;
      std::string rotation = "aurco_11 : roll = " + roll + ", pitch = " + pitch + ", yaw = " + yaw + " (degree)";
      std::string position = "aurco_11 : X = " + vecter_x + ", Y = " + vecter_y + ", Z = " + vecter_z + " (m)";
      // puttext for 11
      cv::putText(imageCopy, position, cv::Point(0, 50), cv::FONT_HERSHEY_COMPLEX, 1.5, cv::Scalar(255, 0, 0), 4);
      cv::putText(imageCopy, rotation, cv::Point(0, 100), cv::FONT_HERSHEY_COMPLEX, 1.5, cv::Scalar(0, 128, 255), 4);

      std::string rotation_12 = "aurco_12 : roll = " + roll_12 + ", pitch = " + pitch_12 + ", yaw = " + yaw_12 + " (degree)";
      std::string position_12 = "aurco_12 : X = " + vecter_x_12 + ", Y = " + vecter_y_12 + ", Z = " + vecter_z_12 + " (m)";
      // puttext for 12
      cv::putText(imageCopy, position_12, cv::Point(0, 150), cv::FONT_HERSHEY_COMPLEX, 1.5, cv::Scalar(255, 0, 0), 4);
      cv::putText(imageCopy, rotation_12, cv::Point(0, 200), cv::FONT_HERSHEY_COMPLEX, 1.5, cv::Scalar(0, 128, 255), 4);     
    }
    else
    {
      bool b = false;
      auto_charge_service::aurco_info msg;
      msg.not_get_aruco = b;
      Marker_pub.publish(msg); //傳送msg
    }
    // resize frame(1920*1080) --> (600*400)
    cv::Mat resized;
    int width = 600;
    int height = 400;
    cv::resize(imageCopy, resized, cv::Size(width, height));

    // // rotation vextor --> rotation matrix
    // cv::Mat rotationMatrix = (cv::Mat_<float>(3,3)<<0,0,0, 0,0,0, 0,0,0);
    // for(int j=0; j < ids.size(); j++)
    // {
    //   if(ids[j] > 10)
    //     continue;
    //   try
    //   {
    //     cv::Rodrigues(rvecs[j], rotationMatrix);
    //   }
    //   catch(const std::exception& e)
    //   {
    //     ROS_ERROR("%s", e.what());
    //   }
    // }
    //拍照
    // char pic_Name[100] = {};
    // time_t nowTime;
    // tm* now;
    std::string writePath = "/home/c01/Desktop/photo/";
    std::string name;
    std::stringstream temp_i;
    std::string string_i;

    if (32 == cv::waitKey(20)) //空格拍照
    {
      // time(&nowTime);
      // now = localtime(&nowTime);
      // sprintf(pic_Name,"/home/c01/Desktop/photo/%d.jpg", now->tm_sec);
      temp_i << j;
      temp_i >> string_i;
      name = writePath + string_i + ".jpg";
      imwrite(name, imageCopy);
      j++;
    }

    // Convert image from cv::Mat (OpenCV) type to sensor_msgs/Image (ROS) type and publish
    msg = cv_bridge::CvImage(std_msgs::Header(), "bgr8", resized).toImageMsg();
    pub_frame.publish(msg);
    /*
    Cv_bridge can selectively convert color and depth information. In order to use the specified
    feature encoding, there is a centralized coding form:
      Mono8: CV_8UC1, grayscale image
      Mono16: CV_16UC1, 16-bit grayscale image
      Bgr8: CV_8UC3 with color information and the order of colors is BGR order
      Rgb8: CV_8UC3 with color information and the order of colors is RGB order
      Bgra8: CV_8UC4, BGR color image with alpha channel
      Rgba8: CV_8UC4, CV, RGB color image with alpha channel
    */
    // cv::imshow("camera", image);cv::imshow("camera", frame);(ok)
    //  cv::imshow("camera", imageCopy);
    cv::waitKey(1); // Display image for 1 millisecond

    ros::spinOnce();
    loop_rate.sleep();
  }

  // Shutdown the camera
  capture.release();
}