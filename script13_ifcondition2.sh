#!/bin/bash

# Description: Second Project on if statement
# Author: Alfred
# Date: Nov.2019

if
 [ $UID -eq 0 ]

then

echo "Welcome you are root!!!"

else

echo "You need root access!!"
echo "Go get it and come back"

fi
