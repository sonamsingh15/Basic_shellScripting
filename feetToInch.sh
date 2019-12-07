#!/bin/bash -x
echo "1.feet to inch"
echo "2.inch to feet"
echo "3.feet to meter"
echo "4.meter to feet"
read -p "enter  your choice from 1 to 4 " choice
case $choice in
	1) read -p "enter feet you want to convert into inch " feet
		result=$(($feet*12));;
	2) read -p "enter inch you want to convert into feet " inch
		result=`expr $inch/12 | bc` ;;
	3) read -p "enter feet you want to convert into meter " feet
		result=`expr $feet/3.2808 | bc` ;;
	4) read -p "enter meter you want to convert into feet " meter
		result=`expr $meter*3.2808 | bc` ;;
esac
echo "result for choice $choice is " $result
