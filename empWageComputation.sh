#!/bin/bash
isPresent=1
isAbsent=0
wage_per_hour=20
full_day_hour=8
daily_employee_wage=0
echo "Welcome to Employee Wage Computation Program"
emp_check=$((RANDOM%2))
if [ $emp_check -eq $isPresent ]
then
	daily_employee_wage=$((wage_per_hour*full_day_hour))
fi
echo "Today's employee wage is $daily_employee_wage"


