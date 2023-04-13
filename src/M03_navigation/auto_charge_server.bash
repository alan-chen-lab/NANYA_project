#!/usr/bin/expect -f
echo starting auto_charge
# ssh c01@192.168.10.30
# sshpass -p "NewEraAI" ssh -o StrictHostKeyChecking=no c01@192.168.10.30<<ENDSSH
source /opt/ros/kinetic/setup.bash
source /home/c01/naya_navigation/devel/setup.bash
roslaunch auto_charge_service auto_charge.launch
echo complish
# ENDSSH
