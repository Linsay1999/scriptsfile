#!/bin/bash


#-------------------------------------------------------------------
###                      Description: Firewall
#------------------------------------------------------------------
#        Author: Alfred

#        Date: Nov 2019

#------------------------------------------------------------------

##Function

usage() {

echo -e "\nThis script need two arguments the port number and the protocol\n"
echo -e "Example: $0 <port> <protocol>\n $0 80 tcp \n"
}

##Check numbers of arguments

case $1 in
    ''|*[!0-9]*)
    echo -e "\nPlease provide a valid number\n"
    exit 2
    ;;
    *) echo
    ;;
esac

## Check if protocol is tcp or udp


