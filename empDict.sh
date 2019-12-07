#!/bin/bash -x

declare -A dic

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
				empWork1=$(( $empWork + $empWork ))
				hour=$(($hour+$empWork))

					dailySalary=$(($wagePerHours * $empWork1))
					dic[((Day$counter))]=$dailySalary
					counter=$(( $counter + 1 ))
				;;
			$absent)

					empWork1=0
				;;
		esac

	totalSalary=$(($totalSalary + $dailySalary))
	totalempWork[((Day$day))]=$dailySalary
	totalemphour[((counter++))]=$totalSalary
	day=$(($day+1))


done
echo "Total Salary:- " $totalSalary
echo "totalempWork:- " ${totalempWork[@]}
#echo "totalemphour:-"${totalemphour[@]}

echo "dictionary---------------"

echo ${!dic[@]}
echo "Daily SALARY DICTIONARY"
for a in ${!dic[0]}
do
	echo  "$a :${dic[$a]}		${totalSalary[$a]}"
done
echo "Total Salary Dictionary"
for d in ${!totalSalarydic[@]}
do
	echo "$d : $totalSalarydic[$d]}"
done
