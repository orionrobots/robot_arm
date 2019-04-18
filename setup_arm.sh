#!/bin/env bash
# Raspbian setup
sudo apt-get install python3-libusb python3-pip
pip3 install git+https://github.com/orionrobots/python_usb_robot_arm
sudo cat <<END
SUBSYSTEM=="usb", ATTR{idVendor}=="1267", ATTR{idProduct}=="0000", MODE:="0666"
END >/etc/udev/rules.d/42-usb-arm-permissions.rules