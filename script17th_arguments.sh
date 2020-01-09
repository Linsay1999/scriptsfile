#!/bin/bash

# Description: Script Arguments
# Author: Alfred
# Date:
# Ref.: W10D2 

#Write a script that will create user, create directory and file. 
#It will take three arguments
#first argument the username
#second argument the dir name
#third argument the file name

useradd $1
mkdir $2
touch $3
