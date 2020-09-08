#! /bin/bash

status=0
lower=0
higher=100
while(( $status != 1 ))
do

	temp=$(( $higher+$lower ))
	mid=$(( $temp/2 ))
	echo "if your number is equal to "$mid" press 1"
	echo "if your number is greater than "$mid" press 2"
	echo "if your number is less than "$mid" press 3"
	read choice

	if (( $choice == 1 ))
	then
		number=$mid
		break;
	elif (( $choice == 2 ))
	then
		lower=$mid
	elif (( $choice == 3 ))
	then
		higher=$mid
	else
		echo "invalid choice"
	fi
done
rem=0

    while (( $number > 9 ))
    do
        sum=0
        while (( $number > 0 ))
	do
            rem=$(( $number%10 ))
            sum=$(( $sum+$rem ))
            number=$(( $number/10 ))
        done
        number=$sum
    done

echo $number









