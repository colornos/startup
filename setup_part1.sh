#!/bin/bash

# Update and upgrade system
sudo apt update
sudo apt upgrade

# Configure Raspberry Pi settings
sudo raspi-config
# NOTE: user needs to manually reboot after this and then run the second script
