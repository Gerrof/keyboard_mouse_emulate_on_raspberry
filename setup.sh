#! /bin/bash

# Python3 section
sudo pip3 install evdev
sudo pip3 install PyBluez

# Archlinux/Manjaro or pacman section
#sudo pacman -Syu
#sudo pacman -Syu

# Ubuntu/Debian or APT section
#sudo apt-get update -y
#sudo apt-get install \
	bluez bluez-tools bluez-firmware \
	python-bluez python-dev python-pip \
	git python python3 \
	python-dev python3-dev python3-dbus \
	python3-pyudev python3-evdev \
	python-dbus tmux python3-gi \
	python3-pip \
	-y

# Simple copy section
sudo cp dbus/org.thanhle.btkbservice.conf /etc/dbus-1/system.d
sudo cp /lib/systemd/system/bluetooth.service ./bluetooth.service.bk
sudo cp bluetooth.service /lib/systemd/system/bluetooth.service

# Post install section
sudo systemctl daemon-reload
sudo systemctl start bluetooth
