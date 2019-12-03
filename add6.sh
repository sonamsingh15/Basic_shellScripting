#!/bin/bash -x
read -p "enter the number :" a
read -p "enter the number:" b
read -p "enter the number:" c
z=$(( $c + $a / $b ))
echo $z
