#!/bin/bash -x
a=123
b=222
c=456
d=859
e=762

if [ $a -gt $b -a $a -gt $c -a $a -gt $d -a $a -gt $e ]
then
	echo "maximum" $a

elif [ $b -gt $a -a $b -gt $c -a $b -gt $d -a $b -gt $e ]
then
	echo "maximum" $b
elif [ $c -gt $a -a $c -gt $b -a $c -gt $d -a $c -gt $e ]
then
	echo "maximum" $c
elif [ $d -gt $a -a $d -gt $b -a $d -gt $c -a $d -gt $e ]
then
	echo "maximun" $d
elif [ $e -gt $a -a $e -gt $b -a $e -gt $c -a $e -gt $d ]
then
	echo "maximum" $e
fi


if [ $a -lt $b -a $a -lt $c -a $a -lt $d -a $a -lt $e ]
then
        echo "minimum" $a

elif [ $b -lt $a -a $b -lt $c -a $b -lt $d -a $b -lt $e ]
then
        echo "minimum" $b
elif [ $c -lt $a -a $c -lt $b -a $c -lt $d -a $c -lt $e ]
then
        echo "minimum" $c
elif [ $d -lt $a -a $d -lt $b -a $d -lt $c -a $d -lt $e ]
then
        echo "minimum" $d
elif [ $e -lt $a -a $e -lt $b -a $e -lt $c -a $e -lt $d ]
then
        echo "minimum" $e
fi

