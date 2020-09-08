#! /bin/bash

amount=100
bets=0
win=0
while(( $amount > 0 && $amount < 200 ))
do
	result=$(( RANDOM%2 ))
	bets=$(( $bets+1 ))
	amount=$(( $amount-1 ))
	if(( $result == 1 ))
	then
		win=$(( $win+1 ))
		amount=$(( $amount+2 ))
	fi
done

echo "no of bets is "$bets
echo "no of times won is "$win
