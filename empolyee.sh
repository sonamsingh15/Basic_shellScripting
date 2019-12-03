#!/bin/bash -x

empStatus=$((RANDOM%2))
empType=$((RANDOM%2))
empRatePerHr=100
fullTimeHr=8
halfTimeHr=4


if [ $employeStatus -eq 0 ]
then
case
	echo "employee is present"
        if [ $empType -eq 0 ]
			then
				salary=$(( $empRatePerHr * $halfTimeHr ))
       		                echo "salary to employee....>$salary"
		else
			salary=$(( $empRatePerHr * $fullTimeHr ))
			echo "salary to employee....>$salary"
		fi
else
	echo "employee is absent"
fi

