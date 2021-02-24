#!/bin/bash
# MIT License
# Copyright (c) 2021 Jaehyun Shim

# SSH
sudo apt-get -y install openssh-server

# Samba
sudo apt-get -y install -y samba
echo 'password' | sudo -S smbpasswd -n $USER
sudo bash -c 'cat config/samba/smb.conf >> /etc/samba/smb.conf'
echo 'password' | sudo -S service smbd restart

# Vino
sudo apt-get -y install vino
gsettings set org.gnome.Vino require-encryption false
gsettings set org.gnome.Vino prompt-enabled false

# Barrier
sudo apt-get -y install barrier
