#!/bin/bash -x

empStatus=$((RANDOM%2))
empType=$((RANDOM%2))
empRatePerHr=100
fullTimeHr=8
halfTimeHr=4
isHalfTime=0
isFullTime=1

if [ $empStatus -eq 0 ]
then

	echo "employee is present"
        case $empType in
				$isHalfTime)
							salary=$(( $empRatePerHr * $halfTimeHr ));;
				$isFullTime)
							salary=$(( $empRatePerHr * $fullTimeHr ));;
			esac
			echo "totl salary .. $salary" 

else
	echo "employee is absent"
fi

