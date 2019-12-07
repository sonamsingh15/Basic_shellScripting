#!/bin/bash -x

check=0
declare -a array
function arrayValue()
{
for((i=0; i<10; i++))
do
	random=$((RANDOM%1000))
	array[i]=$random
	if [ $random -le 99 ]
	then
		random=${arrayValue}
	fi
done
echo ${array[@]}
}
arrayValue


for((j=0;j<10;j++))
do
	nextValue=${array[$((j+1))]}
	max=${array[j]}
	if [[ $check1 -lt $nextValue ]]
	then
		check=$max
		check1=$nextValue
	#	max=$nextValue
	fi
done

echo "check "$check
echo "check1 "$check1
echo "max "$max
echo "max2 "$max2
