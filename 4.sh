#!/bin/bash

name() {
	echo 'Как вас зовут:'
	read name
	echo "Hello, "$name""
}

Number(){
	echo 'Сколько вам лет:'
	read age
	echo 'В каком году вы родились:'
	read year
	echo "Учитывая написанные вами значения, сейчас $(($age + $year)) год."
}

name 
Number 
