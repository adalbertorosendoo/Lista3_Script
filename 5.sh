#!/bin/bash

echo "Caro usuário, escolha uma senha que contenha 5 caracteres, uma letra maiúscula e um número."
echo -e "Digite sua senha logo abaixo."
read -s password
echo -e "\n"
x=$(echo "${password}" | egrep "[a-zA-Z0-9]{5,}" | egrep "[[:upper:]]" | egrep "[[:digit:]]")

if [ "$password" == "$x" ]; then
	echo "Senha Válida!"
else
	echo "Senha Inválida.
Tente outra vez!"
fi

