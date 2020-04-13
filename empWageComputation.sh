#!/bin/bash -x

echo "Welcome to Employee Wage Computation"

isPartTime=1
isFullTime=2
empRatePerHr=20

random=$(($RANDOM%3))
case $random in
	$isFullTime )
		empHrs=8
		;;
	$isPartTime )
		empHrs=4
		;;
	* )
		empHrs=0
		;;
esac

salary=$(($empHrs*$empRatePerHr))
