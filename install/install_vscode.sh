#!/bin/bash
# MIT License
# Copyright (c) 2021 Jaehyun Shim

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt install apt-transport-https
sudo apt update
sudo apt install code

code --install-extension ms-vscode.cpptools
code --install-extension ms-python.python
code --install-extension twxs.cmake
code --install-extension redhat.vscode-xml
code --install-extension redhat.vscode-yaml
code --install-extension shardulm94.trailing-spaces
code --install-extension msfukui.eof-mark
code --install-extension mhutchie.git-graph
code --install-extension tht13.html-preview-vscode
code --install-extension tomoki1207.pdf
