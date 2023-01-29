#!/bin/bash -x

ranCheck=$((RANDOM%2))

if [ $ranCheck -eq 1 ]
then
        echo " employee is present :) "
else
        echo " employee is absent :( "
fi
