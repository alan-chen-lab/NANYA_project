#!/usr/bin/expect -f
echo starting control and laser
# ssh c01@192.168.10.30
# sshpass -p "NewEraAI" ssh -o StrictHostKeyChecking=no c01@192.168.10.30<<ENDSSH
source /opt/ros/kinetic/setup.bash
source /home/c01/naya_navigation/devel/setup.bash
roslaunch M03_navigation gmapping_nav.launch "map_file:=/home/c01/naya_navigation/src/M03_navigation/maps/$1"
echo complish
# ENDSSH
