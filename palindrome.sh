#! /bin/bash

function palindrome
{
	num1=$1
	rem=0
	while(( $num1 != 0 ))
	do
		rem=$(( $rem*10+$num1%10 ))
		num1=$(( $num1/10 ))
	done

	if(( $rem == $1 ))
	then
		echo "number is palindrome"
	else
		echo "number is not palindrome"
	fi
}

echo "please enter the number"
read number
palindrome $number
