#!/bin/bash -x

echo "Welcome to Employee Wage Computation"

isPartTime=1
isFullTime=2
empRatePerHr=20

random=$(($RANDOM%3))
if [ $isFullTime -eq $random ]
then
	empHrs=8
elif [ $isPartTime -eq $random ]
then
	empHrs=4
else
	empHrs=0
fi

salary=$(($empHrs*$empRatePerHr))
