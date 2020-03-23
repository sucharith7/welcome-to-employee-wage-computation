#!/bin/bash
WAGE=20
fulltime=8
parttime=4
absent=0
month=20
TOTALHOURS=20
totaldays=0
totalhours=0
fullwage=$((fulltime*WAGE))
halfwage=$((parttime*WAGE))
emptywage=$((absent*WAGE))
totalamount=0
while  [[ $totaldays -lt $month && $totalhours -lt $TOTALHOURS ]]
do
((totaldays+=1))
if [ $(( RANDOM % 3 )) -eq 0 ]
then
((totalamount+=$fullwage))
elif [ $(( RANDOM % 3 )) -eq 1 ]
then
((totalamount+=$halfwage))
else
((totalamount+=$emptywage))
fi
done
echo $totalamount



