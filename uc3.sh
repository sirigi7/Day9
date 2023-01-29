#!/bin/bash -x

halfDay=2
fullDay=1
perHourSal=100
maxDay=20
totalWage=0

for (( day=1; day<=$maxDay; day++ ))
do
        ranCheck=$((RANDOM%3))
        case $ranCheck in
                $fullDay)
                        dayHour=8 ;;
                $halfDay)
                        dayHour=4 ;;
                *)
                        dayHour=0 ;;
        esac

        dailyWage=$(( $perHourSal * $dayHour ))
        totalWage=$(($totalWage+$dailyWage))
done
echo "Total wage is $totalWage"
