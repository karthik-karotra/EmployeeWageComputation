#!/bin/bash -x
echo "Hello Employee"

#CONSTANT
IS_PART_TIME=1;
IS_FULL_TIME=2;
EMPLOYEE_RATE_PER_HOUR=20;

#VARIABLE
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

salary=$((employeeHours*EMPLOYEE_RATE_PER_HOUR));
