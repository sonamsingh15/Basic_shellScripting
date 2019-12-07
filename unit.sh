#!/bin/bash -x
read -p "Enter the number " number
if [ $number -eq 1 ]
then
	echo "unit"
elif [ $number -eq 10 ]
then
	echo "ten"
elif [ $number -eq 100 ]
then
	echo "hundered"
elif [ $number -eq 1000 ]
then
	echo "thousand"
fi
