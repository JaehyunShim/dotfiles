#!/bin/bash
# MIT License
# Copyright (c) 2021 Jaehyun Shim

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt-get -y update

if [ `lsb_release -cs` == focal ]; then
  sudo apt-get install -y ros-noetic-desktop-full
  source /opt/ros/noetic/setup.bash
  sudo apt-get install -y python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential
  #sudo apt install -y python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential
fi

sudo -S rosdep init
rosdep update

mkdir -p $HOME/catkin_ws/src
cd $HOME/catkin_ws
catkin_make
