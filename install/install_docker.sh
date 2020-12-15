#!/bin/bash
# MIT License
# Copyright (c) 2020 Jaehyun Shim

curl -fsSL https://get.docker.com/ | sudo sh
sudo usermod -aG docker $USER
