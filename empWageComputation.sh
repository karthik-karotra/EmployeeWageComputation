#!/bin/bash -x
echo "Hello Employee"

#CONSTANT
IS_PRESENT=1;
EMP_RATE_PER_HR=20;
EMP_HRS=8;

#VARIABLE
randomCheck=$((RANDOM%2));

if [ $IS_PRESENT -eq $randomCheck ];
then
	salary=$(($EMP_HRS*$EMP_RATE_PER_HR))
else
	salary=0;
fi
