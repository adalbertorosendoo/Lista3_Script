#!/bin/bash

echo "Essa é uma frase criativa."

while [ "$y" != 'x' ]; do 
	echo "====== MENU ======
a - Liste apenas os diretórios de uma pasta
b - Liste apenas os arquivos executáveis
c - Liste apenas os links simbólicos
x - Saia do script
----------------------------------------------"
	echo -e "\n"
	y=""
	read -p "Digite uma opção: " y
	echo -e "\n"

	if [ "$y" == 'a' ]; then
		read -p "Escolha uma pasta para listar seus diretório: " z
		ls -l $z | grep -E '^d'
		echo -e "\n"
		echo "Esses são os seus diretórios da pasta "$z"."
		echo -e "\n"
	elif [ "$y" == 'b' ]; then
		read -p "Escolha uma pasta para listar seus arquivos executáveis: " z
		ls -l $z | grep '^-'
		echo -e "\n"
		echo "Esses são os seus arquivos executáveis da pasta "$z"."
		echo -e "\n"
	elif [ "$y" == 'c' ]; then
		read -p "Escolha uma pasta para listar apenas os links simbólico: " z
		echo -e "\n"
		ls -lhaF $z | grep "^l"
		echo -e "\n"
		echo "Esses são os seus links simbólicos da pasta "$z"."
		echo -e "\n"
	else
		echo "Saindo do Script.
Até a próxima!"
	fi
done
