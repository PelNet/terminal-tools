#!/bin/bash
# script expects a fileformat to be given as parameter.
# all files in the given fileformat will be copied to a directory of choice

fileformat=$1
echo "Copy $fileformat files? Press 'y' to confirm:"
read agr
if [ "$agr" == "y" ]; then
	echo "Choose a directory to paste all the $fileformat files:"
	read pastedir
	cp *.$fileformat $pastedir
	echo "Total amount of $fileformat files copied:"
	result= ls -l $pastedir | grep .$fileformat | wc -l
else
	echo "Terminating script: You did not confirm." 
	exit
fi
echo "Script terminated."