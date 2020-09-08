#! /bin/bash

echo "please enter the number"
read num
status=0
for (( i=2;i<=num/2;i++ ))
do
	if (( $(( $num%$i )) == 0 ))
        then
                status=1
                break;
        fi
done
if (( $status == 0 ))
then
	echo $num" is a prime number"
else
	echo $num" is not a prime number"
fi
