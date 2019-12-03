#!/bin/bash -x
if [ -d $file ];
then
	echo 'file Exit';
else
	mkdir checkingdir
	echo 'directory created';
fi
