#!/bin/bash -x

echo "Welcome to FlipCoin Combination Program"

Coin=$(( RANDOM%2 ))
echo $Coin
if [ $Coin -eq 0 ]
then
   echo "Head"
else
   echo "Tail"
fi
