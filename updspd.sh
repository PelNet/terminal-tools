#!/bin/bash

#
# Estimates upload time of a given file
# set upload speed at line 11
# example: upd /home/johndoe/mymovie.mp4
#

#first argument is file
file=$1
uplspd=50/8

#find out size, convert to MB
#is float number
size= $[size + $((stat -c "%s" "$file"))]

echo $size
#divide size by time
#estime=$size
