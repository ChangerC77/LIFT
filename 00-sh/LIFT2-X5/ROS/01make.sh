#!/bin/bash
source ~/.bashrc
workspace=$(pwd)


#body
gnome-terminal -t "body" -x  bash -c "cd ${workspace}; cd ../../..; cd body/ROS; rm -rf build install log .catkin_workspace ;catkin_make; exec bash;"
sleep 0.5
#x7s
gnome-terminal -t "L" -x  bash -c "cd ${workspace}; cd ../../..; cd ARX_X5/ROS/X5_ws; rm -rf build install log .catkin_workspace src/CMakeLists.txt;catkin_make; exec bash;"
sleep 0.5

#VR
gnome-terminal -t "vr" -x  bash -c "cd ${workspace}; cd ../../..; cd ARX_VR_SDK/ROS; rm -rf build install log .catkin_workspace;./port.sh; exec bash;"
