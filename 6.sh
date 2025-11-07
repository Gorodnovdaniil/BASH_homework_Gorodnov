#!/bin/bash

echo 'Введите название файла:'
read file

if [ -f "$file" ]
then
	wc -l "$file"
	ls -l > output.txt
else
	ls -l > error.log
fi

