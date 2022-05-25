#!/bin/bash

echo "Script para remover as linhas vazias de um arquivo."
echo ""

z=""
read -p "Escolha um arquivo para ser removida as linhas vazias: " z

cat "$z" | tr -s '\n'

echo ""
echo "Script concluído no arquivo "$z"."

