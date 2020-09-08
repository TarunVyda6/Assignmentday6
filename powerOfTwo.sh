#! /bin/bash

echo "enter the value of n"

read n
ans=1
for (( i=1;i<=n;i++ ))
do
	ans=$(( $ans*2 ))
	echo "2^"$i"="$ans
done
