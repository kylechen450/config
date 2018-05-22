#!/bin/bash

sudo cp /etc/modprobe.d/nvidia_blacklist.conf-copy /etc/modprobe.d/nvidia_blacklist.conf
sudo rm /etc/X11/xorg.conf

reboot