#!/bin/bash -x

echo "Welcome to Employee Wage Computation"

IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20
MAX_HRS_IN_MONTH=100

totalEmpHrs=0
totalWorkingDays=0
totalSalary=0

function getWorkingHours(){
	case $1 in
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
}

while [ $totalEmpHrs -lt $MAX_HRS_IN_MONTH -a $totalWorkingDays -lt $NUM_WORKING_DAYS ]
do
	((totalWorkingDays++))
	random=$(($RANDOM%3))
	getWorkingHours $random
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
done

totalSalary=$(($totalEmpHrs*$EMP_RATE_PER_HR))
