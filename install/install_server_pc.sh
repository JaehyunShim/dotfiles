#!/bin/bash
# MIT License
# Copyright (c) 2020 Jaehyun Shim

# SSH
sudo apt-get install openssh-server

# Vino
sudo apt install vino
gsettings set org.gnome.Vino require-encryption false
gsettings set org.gnome.Vino prompt-enabled false

# Barrier
sudo apt install barrier
