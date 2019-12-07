#!/bin/bash -x
wagePerHours=100
present=1
absent=0
totalSalary=0
day=0
hour=0
counter=0


function getWorkingHours()
{
randomTime=$((RANDOM%2))
	if [ $randomTime -eq 1 ]
	then
		empWorkingHour=8
	else
		empWorkingHour=4
	fi
	echo $empWorkingHour
}
getWorkingHours
	while [[ day -le 20 && hour -le 50 ]]
	do
		workingHour=$empWorkingHour
		randomPresent=$((RANDOM%2))
		case $randomPresent in
			$present)
				empWork=$( getWorkingHours  $empWorkingHour )
				empWork1=$(( $getWorkingHours + $empWork ))
				hour=$(($hour+$empWork))
				;;
			$absent)

					empWork1=0
				;;
		esac

dailySalary=$(($wagePerHours * $empWork1))
totalSalary=$(($totalSalary + $dailySalary ))
totalempWork[((counter++))]=$dailySalary
totalemphour[((counter++))]=$totalSalary
day=$(($day+1))
done
echo "Total Salary:- " $totalSalary
echo "totalempWork:- " ${totalempWork[@]}
echo "totalemphour:-"${totalemphour[@]}
