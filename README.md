# NANYA_project
Cooperative project

檔案: [建置教學](https://docs.google.com/presentation/d/15nAo85tFaTnO_qqIzosdZcfENdTAr-pa/edit?usp=share_link&ouid=110465291790909207744&rtpof=true&sd=true)
## System Architecture

![screen](/Pictures/系統架構.png)

## Control
操作功能使用原廠商提供的程式，以下為開啟指令:

* 啟動底盤
```
roslaunch BaseNode base_connect.launch
```
* 啟動把手控制
```
roslaunch BaseNode joy_control.launch
```
* 已將兩者整合為以下，啟動此即可使用把手操控機器人。
```
roslaunch M03_navigation control_robot.launch
```
## Ladir
光達功能使用原廠商提供的程式，以下為開啟指令:

* 啟動光達:
```
roslaunch laser rplidar_s1_.launch
```
* 通常啟動光達將使用建圖或導航功能，在使用建圖時將啟動底盤和光達，已將兩者整合為以下。
```
roslaunch M03_navigation control_robot_and_laser.launch
```
## Build Map
* 啟動建圖時需開啟底盤和光達才能成功建圖，首先開啟兩者:
```
roslaunch M03_navigation control_robot_and_laser.launch
```
* 再來開啟建圖程式:
```
roslaunch gmapping gmapping_rviz.launch
```
此時即可開始建圖~

影片: [Build map example](https://drive.google.com/file/d/1klJ9AeptKDNhmi2V4zyhWVIo1VGQPnjq/view?usp=share_link)
## Save Map
建好地圖好，需保存地圖，即可存放地圖至指定資料夾(/home/c01/naya_navigation/src/M03_navigation/maps)。

* 開啟一新terminal，執行以下指令:
```
rosrun map_server map_saver -f "/home/c01/naya_navigation/src/M03_navigation/maps/your_map_name
```

範例地圖(ntnu_4F):

![screen](/Pictures/Gmapping建立完的地圖.png)
## Navigation
此導航功能已包跨:機器人定位功能、路徑規劃、以及避障機制。

避障機制影片: [Obstacles avoidance](https://drive.google.com/drive/folders/15CanhZSIuzPXE_G3pgGHpBokooCxc_N6?usp=share_link)

* 一般而言需開啟底盤、光達、以及導航相關程式，已將以上程式整合為以下。
```
roslaunch M03_navigation gmapping_nav_rviz.launch
```
啟動後即可開始導航任務，首先必須將機器人之光達對準道路，再選擇導航目標點並調整到達的朝向，放開後機器人即會駛向目標點。

影片: [Navigation example](https://drive.google.com/file/d/1CDLqKJnabxWYUly3Iqd83e97-wSehT6J/view?usp=share_link)

導航片段:

![screen](/Pictures/導航片段之解釋圖.JPG)

***

## Parameters setting

* Move_base
* Amcl Parameters
* Gmapping Parameters

## Move_base
一般有六個參數檔，參考以下設置: cd /src/M03_navigation/param/ and check

* move_base: [move_base_params.yaml](https://github.com/alan-chen-lab/NANYA_project/blob/main/src/M03_navigation/param/move_base_params.yaml)
* dwa_local_planner: [dwa_local_planner_params.yaml](https://github.com/alan-chen-lab/NANYA_project/blob/main/src/M03_navigation/param/dwa_local_planner_params.yaml)
* costmap_common: [costmap_common_params.yaml](https://github.com/alan-chen-lab/NANYA_project/blob/main/src/M03_navigation/param/costmap_common_params.yaml)
* global_costmap: [global_costmap_params.yaml](https://github.com/alan-chen-lab/NANYA_project/blob/main/src/M03_navigation/param/global_costmap_params.yaml)
* local_costmap: [local_costmap_params.yaml](https://github.com/alan-chen-lab/NANYA_project/blob/main/src/M03_navigation/param/local_costmap_params.yaml)
* global_planner: [global_planner_params.yaml](https://github.com/alan-chen-lab/NANYA_project/blob/main/src/M03_navigation/param/global_planner_params.yaml)

## Amcl Parameters
