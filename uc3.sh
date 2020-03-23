#!/bin/bash
WAGE=20
fulltime=8
parttime=4
if [ $(($RANDOM % 3 )) -eq 0 ]
then
echo "fulltime employeewage" $(( WAGE * fulltime ))
elif  [ $(($RANDOM % 3 )) -eq 1 ]
then
echo "parttime employee wage" $(( WAGE * parttime ))
else
echo "employee absent"
fi
