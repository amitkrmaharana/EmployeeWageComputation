#!/bin/bash
isPresent=1
isAbsent=0
echo "Welcome to Employee Wage Computation Program"
emp_check=$((RANDOM%2))
if [ $emp_check -eq $isPresent ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi

