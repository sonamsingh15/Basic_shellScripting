#!/bin/bash -x

hello
if [ $? -eq 0 ]
then
	echo "found"
else
	echo "not found"
fi
ls
if [ $? -eq 0 ]
then
	echo "command found"
else
	echo "not found"
fi

