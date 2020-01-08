#!/bin/bash

# Description: Short Inventory of the System
# Author: Alfred DZALI
# Date: Oct. 19/W8D2

s=sleep
#Displaying the Kernel Version/
echo "Checking The kernel version please wait..."
$s 4
uname -r

echo

#Displaying the system bits
echo "Displaying the system bits..."
$s 4
getconf LONG_BIT

echo

#Displaying the OS Version
echo "Displaying the OS..."
$s 4
cat /etc/issue

echo

#Displaying how long the system have been running
echo "Checking how long the system have been up"
$s 4
uptime

echo

#Displaying the Memory size
echo "Checking Memory information..."
$s 4
free -m

echo

echo "Thank you for stopping by"
$s 4
