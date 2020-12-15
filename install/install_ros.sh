#!/bin/bash
# MIT License
# Copyright (c) 2020 Jaehyun Shim

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt-get update
sudo apt-get install -y ros-$ROS_DISTRO-desktop-full
source /opt/ros/$ROS_DISTRO/setup.bash
sudo apt install -y python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential
sudo rosdep init
rosdep update

mkdir -p $HOME/catkin_ws/src
cd $HOME/$name_catkin_workspace
catkin_make
