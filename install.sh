#!/bin/bash
# MIT License
# Copyright (c) 2020 Jaehyun Shim

bash ./install/install_base.sh
bash ./install/install_ros.sh
bash ./install/install_ros2.sh
bash ./install/install_chrome.sh
bash ./install/install_terminator.sh
bash ./install/install_vscode.sh
bash ./install/install_docker.sh

bash ./install/install_client_pc.sh
bash ./install/install_server_pc.sh

cp -r config/autostart ~/.config/autostart
cp config/Code/User/settings.json ~/.config/Code/User/settings.json
cp -r config/terminator ~/.config/terminator
cp config/git/gitconfig ~/.gitconfig

if [ `lsb_release -cs` == xenial ]; then
  cat config/bash/bashrc16.04 >> ~/.bashrc
elif [ `lsb_release -cs` == bionic ]; then
  cat config/bash/bashrc18.04 >> ~/.bashrc
elif [ `lsb_release -cs` == focal ]; then
  cat config/bash/bashrc20.04 >> ~/.bashrc
fi

sleep 3
reboot
