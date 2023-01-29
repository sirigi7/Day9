#!/bin/bash -x

fullDay=1
halfDay=2
perHourSal=100
maxDay=31
totalWage=0
dayPresent=0
day=1
totalHour=0

function checkDayHour(){
	case $1 in
                $fullDay)
                        dayHour=8
                        ;;
                $halfDay)
                        dayHour=4 ;;
                *)
                        dayHour=0 ;;
        esac
	echo $dayHour
}

while [[ $day -lt $maxDay && $dayPresent -lt 20 && $totalHour -lt 120 ]]
do
	workingHour="$( checkDayHour $((RANDOM%3)) )"
	if [ $workingHour -ne 0 ]
	then
		((dayPresent++))
	fi
	totalHour=$(($totalHour+$workingHour))
	dailyWage=$(($perHourSal*$workingHour))
	totalWage=$(($totalWage+$dailyWage))
	((day++))
done
echo "The total wage is $totalWage"
echo "The total Hour worked $totalHour"
echo "The total present days are $dayPresent"
echo $day
declare -A empWage
empWage[totalWage]=$totalWage
empWage[totalHour]=$totalHour
echo ${empWage[@]}
