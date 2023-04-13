#!/usr/bin/expect -f
echo closing rosnode
# ssh c01@192.168.10.30
# sshpass -p "NewEraAI" ssh -o StrictHostKeyChecking=no c01@192.168.10.30<<ENDSSH
source /opt/ros/kinetic/setup.bash
rosnode kill -a
echo complish
# ENDSSH