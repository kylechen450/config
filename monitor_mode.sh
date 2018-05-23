#!/bin/bash

sudo cp /etc/X11/xorg.conf-copy /etc/X11/xorg.conf
sudo rm /etc/modprobe.d/nvidia_blacklist.conf

reboot