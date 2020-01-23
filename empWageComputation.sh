#!/bin/bash -x 
echo "Hello Employee"

#CONSTANT
IS_PART_TIME=1;
IS_FULL_TIME=2;
EMPLOYEE_RATE_PER_HOUR=20;
WORKING_DAYS_PER_MONTH=20;
MAX_HOURS_IN_MONTH=100;

#VARIABLE
totalEmployeeHours=0;
totalWorkingDays=0;

while [[ $totalEmployeeHours -lt $MAX_HOURS_IN_MONTH && $totalWorkingDays -lt $WORKING_DAYS_PER_MONTH ]]
do
	((totalWorkingDays++))
	employeeCheck=$((RANDOM%3));
	case $employeeCheck in
		$IS_FULL_TIME )
			employeeHours=8
			;;
		$IS_PART_TIME )
			employeeHours=4
			;;
		* )
			employeeHours=0
			;;
	esac
	totalEmployeeHours=$(($totalEmployeeHours + $employeeHours))
done
	totalSalary=$(($totalEmployeeHours*$EMPLOYEE_RATE_PER_HOUR));
