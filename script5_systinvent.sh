#!/bin/bash

# Description: Short Inventory of the System
# Author: Alfred DZALI
# Date: Oct. 19/W8D2


#Displaying the Kernel Version/
echo "Checking The kernel version please wait..."
sleep 4
uname -r

echo

#Displaying the system bits
echo "Displaying the system bits..."
sleep 4
getconf LONG_BIT

echo

#Displaying the OS Version
echo "Displaying the OS..."
sleep 4
cat /etc/issue

echo

#Displaying how long the system have been running
echo "Checking how long the system have been up"
sleep 4
uptime

echo

#Displaying the Memory size
echo "Checking Memory information..."
sleep 4
free -m

echo

echo "Thank you for stopping by"
sleep 4
