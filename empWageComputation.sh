#!/bin/bash -x

echo "Welcome to Employee Wage Computation"

IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20

totalSalary=0

for((i=0;i<$NUM_WORKING_DAYS;i++))
do
	random=$(($RANDOM%3))
	case $random in
		$IS_FULL_TIME )
			empHrs=8
			;;
		$IS_PART_TIME )
			empHrs=4
			;;
		* )
			empHrs=0
			;;
	esac

	salary=$(($empHrs*$EMP_RATE_PER_HR))
	totalSalary=$(($totalSalary+$salary))
done
