#!/bin/bash -x

halfDay=2
fullDay=1
perHourSal=20

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
echo "Daily wage is $dailyWage"


