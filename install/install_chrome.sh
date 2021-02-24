#!/bin/bash
# MIT License
# Copyright (c) 2021 Jaehyun Shim

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get -y install ./google-chrome-stable_current_amd64.deb
rm ./google-chrome-stable_current_amd64.deb
