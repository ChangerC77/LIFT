#!/bin/bash

# workspace=$(pwd)

workspace=/home/arx/ARX_SDK/LIFT_ALL_IN_ONE_SDK/00-sh/ROS2

source ~/.bashrc

# CAN
gnome-terminal -- bash -c "cd ${workspace}/../..; cd ARX_CAN/arx_can; sudo ./arx_can1.sh; exec bash;"
sleep 0.1
gnome-terminal -- bash -c "cd ${workspace}/../..; cd ARX_CAN/arx_can; sudo ./arx_can3.sh; exec bash;"
sleep 0.1
gnome-terminal -- bash -c "cd ${workspace}/../..; cd ARX_CAN/arx_can; sudo ./arx_can5.sh; exec bash;"
sleep 1

# Body
gnome-terminal -- bash -c "cd ${workspace}/../..; cd body/ROS2; source install/setup.bash && ros2 launch arx_lift_controller lift.launch.py; exec bash;"

# ARM
sleep 3
gnome-terminal -- bash -c "cd ${workspace}/../..; cd LIFT_ARM/ROS2/R5Pro_ws; source install/setup.bash && ros2 launch arx_r5pro_controller open_vr_double_arm.launch.py; exec bash;"

# VR
gnome-terminal -- bash -c "cd ${workspace}/../..; cd ARX_VR_SDK/ROS2; source install/setup.bash && ros2 run serial_port serial_port_node; exec bash;"
sleep 0.1
gnome-terminal -- bash -c "cd ${workspace}/../..; cd ARX_VR_SDK/ROS2; source install/setup.bash && ros2 topic echo /ARX_VR_L; exec bash;"

