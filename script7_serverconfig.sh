#!/bin/bash


# Description: Server Configuration
# Author: Alfred
# Date: oct. 2019
# Ref.: W9D1/Project8
 
s=sleep
clear
echo "This script is going to create users, create file and install some packages. Please give us a few moment"

$s 5

echo "Creating user Ansible..."
$s3
useradd ansible

echo "Copying the variable into the user ansible home Directory..."
$s 3
echo "TMP=/var/log" >> /home/ansible/.bashrc
echo "TMPDIR=tmp" >> /home/ansible/.bashrc

echo "Creating the deploy group..."
$s 3 
groupadd deploy

echo "Adding user ansible to the group deploy..."
$s 3
usermod -G deploy ansible

echo "Creating the Directory http_log..."
$s 3
mkdir /var/log/http_log

echo "Creating logs file..."
$s 3
touch /var/log/http_log/error.log
touch /var/log/http_log/access.log

echo "Updating file persmissions..."
$s 3
chmod 640 /var/log/http_log/error.log
chmod 640 /var/log/http_log/access.log

echo "Installing some packages..."
echo

echo "Installation of git..."
yum -y install git
echo
echo
echo

echo "Installation of finger..."
yum -y install finger
echo
echo 
echo

echo "Installation of tree..."
yum -y install  tree
echo
echo
echo "Server configuration is completed successfully."
