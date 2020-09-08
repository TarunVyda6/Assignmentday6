#! /bin/bash


ans=1
i=1
while(( $ans != 256 ))
do
	ans=$(( $ans*2 ))
	echo "2^"$i"="$ans
	i=$(( i+1 ))
done
