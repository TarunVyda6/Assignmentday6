#! /bin/bash

count1=0
count2=0

while(( $count1 <= 11 && $count2 <= 11 ))
do
	toss=$(( RANDOM%2 ))
	if(( $toss == 0 ))
	then
		count1=$(( $count1+1 ))
	else
		count2=$(( $count2+1 ))
	fi
done

if(( $count1 == 11 ))
then
	echo "heads has reached 11 times"
else
	echo "tails has readched 11 times"
fi
