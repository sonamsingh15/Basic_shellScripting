#!/bin/bash -x

x=`echo $(( RANDOM%6 ))`
y=`echo $(( RANDOM%6 ))`
z=$(( $x + $y ))
echo $z
