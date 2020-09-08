#! /bin/bash

echo "please enter lower limit"
read min
echo "please enter the upper limit "
read limit


for (( j=$min;j<limit;j++ ))
do
	status=0
	for (( i=2;i<=$(( $j/2 ));i++ ))
	do
		if (( $(( $j%$i )) == 0 ))
        	then
			status=1
        	fi
	done
	if (( $status == 0 && $j != 0 && $j != 1 ))
	then
		echo $j
	fi
done
