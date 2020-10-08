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

declare -A Coin;

Coin[head]=0;
Coin[tail]=0;
count=0;

addtoDictionary(){
if [ $1 -eq 0 ]
then
   Coin[head]=`expr ${coin[head]}+1`;
else
   Coin[tail]=`expr ${coin[tail]}+1`;
fi
}
while [ $count -le 25 ]
do
   flip=$(( RANDOM%2 ));
   addtoDictionary $flip;
   ((++count))
done

perhead=`expr ${coin[head]}\*100`;
perhead=`expr $perhead/25`;
pertail=`expr 100 - $perhead`;
echo "percentage of heads is $perhead"
echo "percentage of tails is $pertail"
