#!/bin/bash -x

echo "Welcome to Employee Wage Computation"

isPresent=$(($RANDOM%2))

if [ $isPresent -eq 1]
then
	echo "Employee present"
else
	echo "Employee absent"
fi
