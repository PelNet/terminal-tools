#!/bin/bash
# quickly generate files for testing purpose
i=1
while [ "$i" -lt "$1" ]; do
	touch file$i.txt
	i=$(($i + 1))
done
