#!/bin/bash -x
read -p "Enter the year:" p
if [ $year -gt 999 ]
then

  elif [ $year%4 -eq 0 -a $year%100 -eq 0 -a $year%400 -eq 0 ]
  then
	echo "leap year.. $year"
  else
	echo "not leap Year.. $year"

fi
