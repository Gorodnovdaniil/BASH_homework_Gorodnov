#!/bin/bash

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

for file in "$directory"/*; do
    if [ -f "$file" ]; then
        cp "$file" ./
        echo "Скопирован: $(basename "$file")"
    fi
done

echo "Готово! Файлы из '$directory' скопированы в текущую папку."
