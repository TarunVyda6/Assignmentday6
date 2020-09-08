#! /bin/bash

function DegcToDegf
{
	temp=`awk "BEGIN {print  $1*9/5+32}"`
	echo $1" degc = "$temp" degf"

}



function DegfToDegc
{
        temp=`awk "BEGIN {print  ($1-32)*5/9}"`
        echo $1" degf = "$temp" degc"

}



echo "enter the type of conversion"
echo "for degC to degF press 1"
echo "for degF to degC press 2"
read selection

if (( $selection == 1 ))
then
	echo "enter the degC between 0-100"
	read input
	if (( $input>=0 && $input<=100 ))
	then
		value=1
	else
		value=0
	fi
elif (( $selection == 2 ))
then
	echo "enter the degF between 32-212"
	read input
	if (( $input>=32 && $input<=212 ))
	then
		value=2
	else
		value=0
	fi
fi


	case $value in
	1)	DegcToDegf $input
		;;
	2)	DegfToDegc $input
		;;
	*)	echo "wrong selection"
		;;
	esac
