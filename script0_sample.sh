#!/bin/bash

#Description: This script is to do an inventory of our system and install some dependencies

#Autor:SS10

echo
echo "Now making the inventory of the system"
sleep 2
echo
echo "Checking the Os Version,please wait..."
sleep 4
echo

echo "The Os version of the system is"
echo
 lsb_release -a
sleep 6
echo

echo "Checking the kernel version..."
sleep 3
echo

echo "The kernel version is"
echo
 uname -a
sleep 6
echo
echo "Checking the hardwares components..."
sleep 3
echo
echo "The available memory information are"
echo
free -m
echo
sleep 6
echo
echo "The disk size is"
echo
fdisk -l
sleep 6
echo
echo "Checking if the system is 32 or 64 bit..."

echo "The system is"
echo
getconf LONG_BIT
echo
sleep 6
echo
echo "Checking the number of Cpus..."
echo
nproc
sleep 6
echo
echo "We are now installing some packages..."
sleep 3
echo
echo "Checking,downloading and installing packages, please wait and relax while drinking your coffee..."
echo
yum install samba -y

yum install httpd -y

yum install mysql -y

yum install gcc* -y

yum install finger -y

yum install git -y 
echo

echo "All packages are now installed. Thank you!"
echo
