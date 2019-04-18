#!/bin/env bash -e
# Raspbian setup
sudo apt-get update -y 
sudo apt-get install -y python3-libusb1 python3-pip git
pip3 install git+https://github.com/orionrobots/python_usb_robot_arm
sudo cat <<END >/etc/udev/rules.d/42-usb-arm-permissions.rules
SUBSYSTEM=="usb", ATTR{idVendor}=="1267", ATTR{idProduct}=="0000", MODE:="0666"
END
