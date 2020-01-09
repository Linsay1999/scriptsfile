#!/bin/bash

# Description: Dev Null
# Author: Alfred
# Date: Oct.2019
# Ref.: W10D2

## Checking if User is root

if [ $UID -ne 0 ]
then 
     echo -e "\n You need root access...\n"
     exit 1
fi

echo -e "\nPlease make a choice below: \n
        *********************************
        *       1==> CPU                *
        *       2==> Memory             *
        *       3==> Os Version         *
        *       4==> Processes          *
        *       5==> System bits        *
        *       6==> Mount points       *
        *       7==> Ip address         *
        *       8==> Hostname           *
        *       9==> Kernel version     *
        *      10==> Update OS          *
        *********************************"
echo -n " Enter your choice (1 - 10): "
read ans

if [ ${ans} -eq 1 ] 2>/dev/null
then
lscpu

elif [ ${ans} -eq 2 ] 2>/dev/null
then
free -m

elif [ [ ${ans} -eq 3 ] 2>/dev/null
then 
cat /etc/*release

elif [ ${ans} -eq 4 ] 2>/dev/null
then 
ps -ef |wc -l

elif [ ${ans} -eq 5 ] 2>/dev/null
then 
getconf LONG_BIT

elif [ ${ans} -eq 6 ] 2>/dev/null
then
df -h

elif [ ${ans} -eq 7 ] 2>/dev/null
then
ip a

elif [ ${ans} -eq 8 ] 2>/dev/null
then
hostname

elif [ ${ans} -eq 9 ] 2>/dev/null
then
uname

elif [ ${ans} -eq 10] 2>/dev/null
then 
yum update -y

else
echo -e "\nPlease enter a valid choice (1-10) \n"
exit 2
fi


