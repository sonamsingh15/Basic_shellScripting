#!/bin/bash -x
file=`find /home -type f -mtime +7`
for file1 in $file;
do
	mv $file1 /home/backup
	echo "done"
done
