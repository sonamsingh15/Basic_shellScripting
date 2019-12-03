#!/bin/bash -x
read -p "enter the single digit number " number

if [ $number -eq 0 ]
then
	 echo "zero"

elif [ $number -lt  1]
then
	  echo "one "
elif[ $number -lt 2 ]
then
	 echo "two"
elif [ $number -lt 3 ]
then
	echo "Three"
elif [ $number -lt 4 ]
then
  	echo "Four"
elif [ $number -lt 5 ]
then
	echo "Five"
elif [ $number -lt 6 ]
then
	echo "Six"
elif [ $number -lt 7 ]
then
	echo "Seveen"
elif [ $number -lt 8 ]
then
	echo "Eight"
elif [ $number -lt 9 ]
then
	echo "Nine"
fi
