#!/bin/bash
# MIT License
# Copyright (c) 2020 Jaehyun Shim

bash ./install/install_base.sh
bash ./install/install_ros.sh
bash ./install/install_ros2.sh
bash ./install/install_git.sh
bash ./install/install_terminator.sh
bash ./install/install_vscode.sh
bash ./install/install_docker.sh

cp -p config/autostart/barrier.desktop ~/.config/autostart/barrier.desktop
cp -p config/autostart/vino-server.desktop ~/.config/autostart/vino-server.desktop
cp -p config/Code/User/settings.json ~/.config/Code/User/settings.json
cp -p config/terminator/config ~/.config/terminator/config
cp -p config/git/gitconfig ~/.gitconfig

if [ `lsb_release -cs` == xenial ]; then
  cat config/bash/bashrc16.04 >> ~/.bashrc
elif [ `lsb_release -cs` == bionic ]; then
  cat config/bash/bashrc18.04 >> ~/.bashrc
elif [ `lsb_release -cs` == focal ]; then
  cat config/bash/bashrc20.04 >> ~/.bashrc
fi
