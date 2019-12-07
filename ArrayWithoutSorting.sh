#!/bin/bash -x
count=0
largest=0
smallest=0
for (( i=0 ;i<10 ;i++ ))
do
	random=$((RANDOM%1000))
	if [ $random -gt 100 ]
	then
		arr[((i))]=$random
	else
		i=$(($1-1))
	fi

done
echo  ${arr[@]}
largest="${arr[0]}"
secondlargest="${arr[0]}"
for(( i=0;i<10;i++ ))
do
	if [[ "${arr[$i]}" -gt $largest ]]
	then
		secondlargest=$largest
		largest="${arr[$i]}"
	else
		if [[ "${arr[$i]}" -gt $secondlargest && "${arr[$i]}" -lt $largest ]]
		then
			secondlargest="${arr[$i]}"
		fi
	fi
done
echo "first largest...$largest"
echo "second largest....$secondlargest"
smallest="${arr[0]}"
secondsmallest="${arr[0]}"
for(( i=0; i<10 ; i++ ))
do
	if [[ "${arr[$i]}" -lt $smallest ]]
	then
		secondsmallest=$smallest
		smallest="${arr[$i]}"
	else
		if [[ "${arr[$i]}"  -lt $secondsmallest && "${arr[$i]}" -gt $smallest ]]
		then
			secondsmallest="${arr[$i]}"
		fi
	fi
done
echo "first smallest number..$smallest"
echo "second smallest number...$secondsmallest"
