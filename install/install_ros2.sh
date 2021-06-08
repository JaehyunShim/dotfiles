#!/bin/bash
# MIT License
# Copyright (c) 2021 Jaehyun Shim

# Reference: https://docs.ros.org/en/foxy/Installation/Ubuntu-Install-Debians.html

# Set Locale
sudo apt update && sudo apt install -y locales
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

# Setup Sources
sudo apt update && sudo apt install -y curl gnupg2 lsb-release
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key  -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

# Install ROS 2 packages
sudo apt update -y
sudo apt install -y ros-foxy-desktop

# Environment setup
source /opt/ros/foxy/setup.bash
sudo apt install -y python3-argcomplete
sudo apt install -y python3-colcon-common-extensions

# Create workspace
mkdir -p $HOME/colcon_ws/src
cd $HOME/colcon_ws
colcon build --symlink-install
