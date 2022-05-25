#!/bin/bash

echo "Fazendo a troca de todos os números em um arquivo pela letra 'Z'."

y=''
read -p "Escolha qual arquivo você quer fazer a alteração: " y

cat $y | tr [0-9] 'Z'

echo "Processo concluído no arquivo "$y"."

