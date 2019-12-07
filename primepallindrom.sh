#!/bin/bash -x

read -p "enter a number to check if it is a prime number or not " number
sum=0
function primeCheck()
{
	for((i=2;i<$number;i++))
	do
		temp=$(($number%$i))
		if [ $temp -eq 0 ]
		then
			isPrime=0
			break
		else
			isPrime=1
		fi
	done

	if [ $isPrime -eq 1 ]
	then
		echo 1
	fi
}

function palindromCheck()
{

	value=$number
	while [ $value -gt 0 ]
	do
		rem=$(( $value%10))
		sum=$((( $sum*10)+$rem))
		value=$(( $value/10))
	done

	if [ $number -eq $sum ]
	then
		echo 2
	else
		echo 3
	fi
}

function main()
{
	primeNum=$(primeCheck)
	if [ $primeNum -eq 1 ]
	then
		palindromNum=$(palindromCheck)
		if [ $palindromNum -eq 2 ]
		then
			echo "prime is palindrom"
		else
			echo "prime is not palindrom"
		fi
	else
		echo "number is not prime"

}
main
