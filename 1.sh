#!/bin/bash

echo 'Напишите название директории:'
read directory 

if [ -z "$directory" ]; then
    echo 'Ошибка: Вы не ввели название директории!'
    exit 1
fi

if [ ! -d "$directory" ]; then
    echo "Ошибка: Директория '$directory' не существует!"
    exit 1
fi

ls -la "$directory" > "$directory/list.txt"

echo 'Введите название файла: '
read file
if [ -f "$directory/$file" ]; then
	echo 'Файл существует'
else 
	echo 'Файла нет'
fi

for file in "$directory";do
ls -la "$file"
done


