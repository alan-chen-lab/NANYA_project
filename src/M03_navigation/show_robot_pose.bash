#!/usr/bin/expect -f
echo starting control and laser
# ssh c01@192.168.10.30
# sshpass -p "NewEraAI" ssh -o StrictHostKeyChecking=no c01@192.168.10.30<<ENDSSH
source /opt/ros/kinetic/setup.bash
source /home/c01/naya_navigation/devel/setup.bash
rosrun robot_pose_publisher robot_pose_publisher
echo complish
# ENDSSH
