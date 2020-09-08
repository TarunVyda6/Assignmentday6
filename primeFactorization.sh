#! /bin/bash

echo "please enter the number "
read number

for(( i=2;i<$number;i++ ))
do
	while(( $(( $number%$i )) == 0 ))
	do
        	echo $i
		number=$(( $number/$i ))
         done
done
if (( $number>2 ))
then
	echo $number
fi
