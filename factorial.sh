#! /bin/bash

echo "please enter the number "

read number

ans=1

for (( i=1;i<=$number;i++ ))
do
	ans=$(( $ans*$i ))
done

echo "factorial of " $number "is "$ans
