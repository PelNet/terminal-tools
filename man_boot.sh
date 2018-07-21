#!/bin/bash
#this script reboots a remote host retrieved from /etc/hosts
# Author: Bilal el Kouazi http://bilalelkouazi.nl/

#retrieve list of hostnames
echo "Retrieving hosts:"
cat /etc/hosts | awk '{print $2}'

#read host as variable, validate if string is not null
echo "SELECT host to reboot:"
read host
if [ -z "$host" ]; then
	echo "Error: No host specified, please enter a name."
else
	ssh $host "reboot"
	echo "$host is rebooting." 
fi
exit
