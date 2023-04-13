#!/usr/bin/expect -f
echo starting control
# ssh c01@192.168.10.30
# sshpass -p "NewEraAI" ssh -o StrictHostKeyChecking=no c01@192.168.10.30<<ENDSSH
source /opt/ros/kinetic/setup.bash
source /home/c01/naya_navigation/devel/setup.bash
roslaunch M03_navigation control_robot.launch 
echo complish
# ENDSSH
