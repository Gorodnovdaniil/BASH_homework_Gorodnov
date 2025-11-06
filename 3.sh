#!/bin/bash

echo 'Введите число:'
read number

if let "$number < 0" 
then
	echo 'Число отрицательное'
elif let "$number==0"
then
        echo 'Число равно нулю'
elif let "$number > 0"
then
        echo 'Число положительное'

	i=1
	while [ "$i" -le "$number" ]
	do
        	echo "$i"
		i=$((i+1))
	done
fi
