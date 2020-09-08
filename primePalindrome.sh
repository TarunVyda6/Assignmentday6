#! /bin/bash -x

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
		echo "number is a prime palindrome"
	else
		echo "number is prime but not palindrome"
	fi
}

echo "please enter the number"
read num

status=0
for (( i=2;i<=$num/2;i++ ))
do
        if (( $(( $num%$i )) == 0 ))
        then
                status=1
                break;
        fi
done
if (( $status == 0 ))
then
        palindrome $num
else
        echo $num" is not a prime number"
fi



