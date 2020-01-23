#!/bin/bash -x
echo "Hello Employee"

#CONSTANT
IS_PRESENT=1;
EMPLOYEE_RATE_PER_HOUR=20;
EMPLOYEE_HOURS=8;

#VARIABLE
randomCheck=$((RANDOM%2));

if [ $IS_PRESENT -eq $randomCheck ];
then
	salary=$(($EMPLOYEE_HOURS*$EMPLOYEE_RATE_PER_HOUR))
else
	salary=0;
fi
