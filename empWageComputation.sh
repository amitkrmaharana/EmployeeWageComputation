#!/bin/bash
isAbsent=0
isFullday=1
isParttime=2
wage_per_hour=20
full_day_hour=8
part_time_hour=8
daily_employee_wage=0
totalWage=0
max_working_hours=100
max_working_days=20
total_working_hours=0
total_working_days=0
function getWorkHours() {
	 case $emp_check in
                $isFullday)
                        total_working_hours=$((total_working_hours+full_day_hour));;
                $isParttime)
                        total_working_hours=$((total_working_hours+part_time_hour));;
        esac
	echo $total_working_hours
}
function salary_per_day() {
	case $emp_check in
                $isFullday)
                        daily_employee_wage=$((wage_per_hour*full_day_hour));;
                $isParttime)
                        daily_employee_wage=$((wage_per_hour*part_time_hour));;
                $isAbsent)
                        daily_employee_wage=0;;
        esac
	echo $daily_employee_wage
}
echo "Welcome to Employee Wage Computation Program"
while [ $total_working_hours -lt $max_working_hours ] && [ $total_working_days -lt $max_working_days ]
do
	emp_check=$((RANDOM%3))
	daily_employee_wage="$( salary_per_day $emp_check)"
	totalWage=$((totalWage+daily_employee_wage))
	dailyWage[$total_working_days]=$daily_employee_wage
	(( total_working_days++ ))
	total_working_hours="$( getWorkHours $emp_check )"
done
echo "Total wage of the employee in a month is $totalWage"
echo "Total working days are $total_working_days"
echo "Total working hours are $total_working_hours"
echo "Daily wages of employee are as follows ${dailyWage[@]}"
