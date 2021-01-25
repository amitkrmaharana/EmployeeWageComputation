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
case $emp_check in
	$isFullday)daily_employee_wage=$((wage_per_hour*full_day_hour));;
	$isParttime)daily_employee_wage=$((wage_per_hour*part_time_hour));;
esac
echo "Today's employee wage is $daily_employee_wage"
