#!/bin/bash -x
touch abc.log.1 def.log.1 ghf.log.1

for file in `ls *.log.1`;
do
	date=$(date +'%d%m%y');
	echo $date
	Name=`echo ${file} | awk -F. '{print $1}'`
	extension=`echo ${file} | awk -F. '{print $2}'`
	updatefile=${Name}-${date}.${extension}
	mv ${file} ${updatefile}
done

