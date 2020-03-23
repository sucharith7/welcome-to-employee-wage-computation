#!/bin/bash
WAGE=20
fulltime=1
parttime=2
absent=0
employeeattendance=$(( RANDOM % 3 ))
case $employeeattendance in
$fulltime )
workinghours=8;;
$parttime )
workinghours=4;;
* )
workinghours=0;;
esac
dailywage=$(($workinghours * $WAGE ))
echo "dailywage of employee" $dailywage

