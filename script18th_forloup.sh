#!/bin/bash

# Description: For Loop
# Author: Alfred
# Date:
# Ref.: W12D2

for items in red black yellow brown orange white pink purple;
do

  echo "the color picked is $items "
  sleep 3

done

for items in $(awk -F '{print $1}' /etc/passwd
do

  echo "The username is $items"
  sleep #
done
