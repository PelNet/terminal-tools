!#/bin/bash

#
# Estimates upload time of a given file
# Use: updspd <file> <upload speed>
# Note: upload speed is always mbps
# example: upd /home/johndoe/mymovie.mp4 50
#

#first argument is file
file=$1

#find out size, convert to MB
fileSize=du $1

#upload speed convert
nspeed=$2
convspeed=nspeed/8

#dive file size by speed