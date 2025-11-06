#!/bin/bash

echo $PATH

echo 'Напишите директорию:'
read new_directory

if [ -d "$new_directory" ]
then 
	echo 'Директория существует, добаляем!'
	export PATH="$PATH:$new_directory"
	echo "Директория '$new_directory' успешно добавлена в PATH"
else 
	echo 'Директории не существует'
fi
