#!/bin/bash

workspace=$(pwd)
source ~/.bashrc

# CAN
gnome-terminal -t "can1" -x sudo bash -c "cd ${workspace}; cd ../../.. ; cd ARX_CAN/arx_can; ./arx_can1.sh; exec bash;"
sleep 0.1
gnome-terminal -t "can3" -x sudo bash -c "cd ${workspace}; cd ../../.. ; cd ARX_CAN/arx_can; ./arx_can3.sh; exec bash;"
sleep 0.1
gnome-terminal -t "can5" -x sudo bash -c "cd ${workspace}; cd ../../.. ; cd ARX_CAN/arx_can; ./arx_can5.sh; exec bash;"
sleep 1

#body
gnome-terminal -t "body" -x  bash -c "cd ${workspace}; cd ../../.. ; cd body/ROS; source devel/setup.bash && roslaunch arx_lift_controller lift.launch; exec bash;"

sleep 3
gnome-terminal -t "L" -x  bash -c "cd ${workspace}; cd ../../.. ; cd ARX_X5/ROS/X5_ws; source devel/setup.bash && roslaunch arx_x5_controller open_double_arm.launch; exec bash;"