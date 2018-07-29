#!/bin/bash
# script expects a fileformat to be given as parameter. 
# all files in the given fileformat will be copied to a directory of choice

fileformat=$1

cp *.$fileformat test
