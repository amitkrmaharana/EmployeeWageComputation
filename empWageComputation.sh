#!/bin/bash -x
isAbsent=0
isFullday=1
isParttime=2
wage_per_hour=20
full_day_hour=8
part_time_hour=8
daily_employee_wage=0
echo "Welcome to Employee Wage Computation Program"
emp_check=$((RANDOM%3))
if [ $emp_check -eq $isFullday ]
then
	daily_employee_wage=$((wage_per_hour*full_day_hour))
elif [ $emp_check -eq $isParttime ]
then
	daily_employee_wage=$((wage_per_hour*part_time_hour))
fi
echo "Today's employee wage is $daily_employee_wage"

