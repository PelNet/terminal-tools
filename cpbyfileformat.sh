#!/bin/bash
# script expects a fileformat to be given as parameter.
# all files in the given fileformat will be copied to a directory of choice

fileformat=$1
echo "Copy $fileformat files to ./test ? Press 'y' to confirm:"
read agr

if [ "$agr" == "y" ]; then
	echo "y pressed..."
	cp *.$fileformat test
else
	echo "Terminating script: You did not confirm." 
	exit
fi

