#!/bin/bash
#this script shows a list of managed VMs retrieved from /etc/hosts
#type vm name to reboot it
#press CTRL + C to stop the script.

#retrieve list of hostnames
echo "Retrieving managed VM's:"
cat /etc/hosts | awk '{print $2}'

#selected vm = mvm, validate if string is not null
echo "SELECT VM to reboot:"
read mvm
if [ -z "$mvm" ]; then
	echo "Error: No VM specified, please enter a name."
else
	ssh $mvm "reboot"
	echo "$mvm is rebooting." 
fi
exit
