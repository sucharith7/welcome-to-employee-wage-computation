#!/bin/bash
WAGE=20
fulltime=0
parttime=1
totaldays=0
totalhours=0
TOTALHOURS=100
MONTH=20
declare -A dailywage
function hoursworked()
{
employeeattendance=$(( $RANDOM % 3 ))
case $employeeattendance in
$fulltime )
workinghours=8;;
$parttime )
workinghours=4;;
* )
workinghours=0;;
esac
echo $workinghours
}
while [[ $totaldays -lt $MONTH && $totalhours -lt $TOTALHOURS ]]
do
((totaldays++))
employeehours="$( hoursworked )"
dailywage[$totaldays]=$(( $employeehours * $WAGE ))
totalhours=$(( $totalhours + $employeehours ))
done
monthlywage=$(( $totalhours * $WAGE ))
echo ${dailywage[@]}
echo " monthly_employee_wage= $monthlywage "

