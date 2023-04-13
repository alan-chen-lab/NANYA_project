#!/usr/bin/expect -f
echo starting save map
# ssh c01@192.168.10.30
# sshpass -p "NewEraAI" ssh -o StrictHostKeyChecking=no c01@192.168.10.30<<ENDSSH
source /opt/ros/kinetic/setup.bash
source /home/c01/naya_navigation/devel/setup.bash
rosrun map_server map_saver -f "/home/c01/naya_navigation/src/M03_navigation/maps/$1"
echo complish
# ENDSSH
