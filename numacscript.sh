#!/bin/bash
# This script is for changing a MAC Address on a specified device.
# TITLE: Numac Script
# AUTHOR: Matt Knouff

echo "Numac Script by MK Design"
echo "Press any key to continue"
read ANY_KEY

echo "Would you like to list your current devices? (y/n)"
read CURR_DEV

if [ "$CURR_DEV" == y ]; then
	ifconfig
fi

echo "Type your new MAC address (format xx:xx:xx:xx:xx:xx): "
read MAC_ADDRESS
echo "Which device? (ex: ath0, wlan0, eth0)"
read DEVICE
echo " "

ifconfig $DEVICE down
ifconfig $DEVICE ether $MAC_ADDRESS
ifconfig $DEVICE up

echo " "
echo "Thank you for using Numac Script by MK Design"
