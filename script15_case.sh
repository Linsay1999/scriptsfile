#!/bin/bash

# Description: Case Esac Statement
# Author: Alfred
# Date: Nov.2019
# Ref.: W10D2

echo "Make a choice:
     1--- Start
     2--- Restart
     3--- Stop  "

echo -n "Enter the choice here: "

read ans

case ${ans} in

  1) systemctl start sshd
  ;;
  2) systemctl restart sshd
  ;;
  3) systemctl stop sshd
  ;;
  *) echo "Invalid choice, please choose between 1 2 3"

esac
