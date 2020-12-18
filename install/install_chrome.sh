#!/bin/bash
# MIT License
# Copyright (c) 2020 Jaehyun Shim

wget -q -O-https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add-
sudo sh -c 'echo "deb [arch = amd64] http://dl.google.com/linux/chrome/deb/ stable main">> /etc/apt/sources.list.d/google-chrome.list '
sudo apt-get update -y
sudo apt-get install -y google-chrome-stable
