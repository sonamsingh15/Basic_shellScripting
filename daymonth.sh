#!/bin/bash -x

read -p "enter the day.." day
read -p "enter the month.." month

#if [[ $month -eq "march" || $month -eq 3 ]] || [[ $month -eq "april" || $month -eq 4 ]] || [[ $month  -eq  "may" || $month -eq  5]] || [[ $month -eq "june" || $month -eq 6 ]] && [[$day -gt 0 && $day -lt 31 ]]



 if [[ $month == "march" && $day -gt 0 && $day -lt 31 ]]
 then
	echo true
elif [[ $month == "april" && $day -ge 0 && $day  -lt 30 ]]
then
	echo true
elif [[ $month == "may" && $day -ge 0 &&  $day -lt 31 ]]
then
	echo true
elif [[ $month == "june" && $day -ge 0 && $day -lt 30 ]]
then
	echo true
fi
