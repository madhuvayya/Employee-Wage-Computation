#!/bin/bash -x

echo "Welcome to Employee Wage Computation"

isPresent=1
random=$(($RANDOM%2))

if [ $isPresent -eq $random ]
then
	empRatePerHr=20
	empHrs=8
	salary=$(($empHrs*$empRatePerHr))
	echo "Employee salary: $salary"
else
	salary=0
	echo "Employee salary: $salary"
fi
