#!/bin/bash
# script expects a fileformat to be given as parameter.
# all files in the given fileformat will be copied to a directory of choice

fileformat=$1
echo "Copy $fileformat files to ./test ? Press 'y' to confirm:"
read agr
result=ls -l | grep .$fileformat | wc -l 
echo "$result were found"
#if [ "$agr" == "y" ]; then
#	echo "y pressed..."
#	cp *.$fileformat test
#else
#	echo "Terminating script: You did not confirm." 
#	exit
#fi