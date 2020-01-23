#!/bin/bash -x 
echo "Hello Employee"

#CONSTANT
IS_PART_TIME=1;
IS_FULL_TIME=2;
EMPLOYEE_RATE_PER_HOUR=20;
WORKING_DAYS_PER_MONTH=20;

#VARIABLE
totalSalary=0;

for((day=1; day<=$WORKING_DAYS_PER_MONTH; day++))
do
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
	salary=$((employeeHours*EMPLOYEE_RATE_PER_HOUR))
	totalSalary=$(($totalSalary + $salary));
done
