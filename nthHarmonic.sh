#! /bin/bash

echo Enter a number
read n

sum=1

for (( i=2;i<=n;i++ ))
do
	sum=`awk "BEGIN {print $sum + 1/$i}"`
done

echo $sum
