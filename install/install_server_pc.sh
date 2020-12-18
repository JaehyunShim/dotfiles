#!/bin/bash
# MIT License
# Copyright (c) 2020 Jaehyun Shim

# SSH
sudo apt-get install openssh-server

# Samba
sudo apt-get install -y samba
echo 'password' | sudo -S smbpasswd -n username
sudo bash -c 'cat config/samba/smb.conf >> /etc/samba/smb.conf'
echo 'password' | sudo -S service smbd restart

# Vino
sudo apt install vino
gsettings set org.gnome.Vino require-encryption false
gsettings set org.gnome.Vino prompt-enabled false

# Barrier
sudo apt install barrier
