#!/bin/bash
# MIT License
# Copyright (c) 2020 Jaehyun Shim

sudo apt update && sudo apt install locales
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8
sudo apt update && sudo apt install -y curl gnupg2 lsb-release
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo sh -c 'echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -cs` main" > /etc/apt/sources.list.d/ros2-latest.list'
sudo apt update
sudo apt install -y ros-$ROS_DISTRO-desktop
source /opt/ros/$ROS_DISTRO/setup.bash
sudo apt install -y python3-pip
pip3 install -U argcomplete

mkdir -p $HOME/colcon_ws/src
cd $HOME/colcon_ws
colcon build --symlink-install
