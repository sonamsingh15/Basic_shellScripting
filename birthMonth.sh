#!/bin/bash -x
declare -A date
declare -A month
i=0

for ((i=0 ; i<50 ; i++ ))
do
	random=$((RANDOM%6))
	month["no $i"]=$random
done
d=1
for d in "${!month[@]}"
do
	echo "$d" "${date[$d]}"
done
