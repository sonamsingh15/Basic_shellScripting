#!/bin/bash -x

function pallindrom()
{
	rev=0
	number=$1
	while [ $number -gt 0 ]
	do
		rem=`expr $number % 10`
		number=`expr $number / 10`
		rev=`expr $rev * 10 + $rem`
	done
 	echo $rev
}
read -p "enter the number.."number1
read -p  "enter the number.."number2
sum=$( pallindrom $number1.. )
sum2=$( pallindrom $number2.. )
if [ $sum -eq $sum2 ]
then
	echo "is pallindrom"
else
	echo "not pallindrom"
fi
