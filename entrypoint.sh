#!/bin/bash
source /opt/ros/noetic/setup.bash 
cd /z1_package/unitree_ws                                                 
catkin_make 
cd .. 
cd ./z1_controller 
rm -f -r ./build 
mkdir ./build 
cd ./build 
cmake .. 
make 
cd ../../ 
cd ./z1_sdk 
rm -f -r ./build 
mkdir ./build 
cd ./build 
cmake .. 
make 
cd ../../                                                             
echo 'source /z1_package/unitree_ws/devel/setup.bash' >>~/.bashrc 
source /z1_package/unitree_ws/devel/setup.bash 
roscore & 
roslaunch --wait unitree_gazebo z1.launch 
bash