#!/bin/bash

lsmod | grep spi

# Clone git repository
git clone https://github.com/colornos/start.git

# Install required libraries
sudo apt-get install -y libusb-dev libdbus-1-dev libglib2.0-dev libudev-dev libical-dev libreadline-dev

# Download, configure and build bluez
wget https://www.kernel.org/pub/linux/bluetooth/bluez-5.52.tar.xz
sudo tar xvf bluez-5.52.tar.xz
cd bluez-5.52
sudo ./configure --disable-systemd
sudo make
sudo make install

# Upgrade setuptools and install pygatt and pexpect
sudo pip install --upgrade setuptools
sudo pip install pygatt
sudo pip install pexpect
