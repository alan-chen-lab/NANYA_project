# NANYA_project
Cooperative project

## Control
操作功能使用原廠商提供的程式，以下為開啟指令:

啟動底盤
```
roslaunch BaseNode base_connect.launch
```
啟動把手控制
```
roslaunch BaseNode joy_control.launch
```
已將兩者整合為以下，啟動此即可使用把手操控機器人。
```
roslaunch M03_navigation control_robot.launch
```
## Ladir
光達功能使用原廠商提供的程式，以下為開啟指令:

啟動光達:
```
roslaunch laser rplidar_s1_.launch
```
通常啟動光達將使用建圖或導航功能，在使用建圖時將啟動底盤和光達，已將兩者整合為以下。
```
roslaunch M03_navigation control_robot_and_laser.launch
```
## Build Map
啟動建圖時需開啟底盤和光達才能成功建圖，首先開啟兩者:
```
roslaunch M03_navigation control_robot_and_laser.launch
```
再來開啟建圖程式:
```
roslaunch gmapping gmapping_rviz.launch
```
此時即可開始建圖~
## Save Map
建好地圖好，需保存地圖，即可存放地圖至指定資料夾(/home/c01/naya_navigation/src/M03_navigation/maps)。

開啟一新terminal，執行以下指令:
```
rosrun map_server map_saver -f "/home/c01/naya_navigation/src/M03_navigation/maps/your_map_name
```
## Navigation
此導航功能已包跨:機器人定位功能、路徑規劃、以及避障機制。

一般而言需開啟底盤、光達、以及導航相關程式，已將以上程式整合為以下。
```
roslaunch M03_navigation gmapping_nav_rviz.launch
```
啟動後即可開始導航任務，首先必須將機器人之光達對準道路，再選擇導航目標點並調整到達的朝向，放開後機器人即會駛向目標點。
