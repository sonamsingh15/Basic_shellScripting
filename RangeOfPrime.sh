#!/bin/bash -x

read -p " enter a number for prime range " number
for((count=2; count<=$number; count++))
do
numValue=$(($count/2))
for((i=2; i<=$numValue; i++))
do
	value=$(($count%$i))
	if [ $value -eq 0 ]
	then
	flag="false"
	break
	else
	flag="true"
	fi
done

if [ $flag == "true" ]
then
	echo $count
fi
done
