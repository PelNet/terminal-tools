#!/bin/bash

#
# Estimates upload time of a given file
# Use: updspd <file> <upload speed>
# Note: upload speed is always mbps
# example: upd /home/johndoe/mymovie.mp4 50
#

#first argument is file, second speed in mbps
file=$1
uplspd=$2/8

#find out size, convert to MB
#is float number
size= du $file | awk '{fileSizeMB = $1 / 1000; print fileSizeMB}'>tmp.log

#divide size by time
#estime=$size