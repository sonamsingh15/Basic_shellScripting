#!/bin/bash -x
sun=0
for((i=0 ;i<5;i++))
do
	x=`echo $((RANDOM%100))`
	sum=$(($sum + $x))
done

echo "sum: $x"
av=$(($sum/5))
echo $av
