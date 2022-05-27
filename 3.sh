#!/bin/bash

read -p "Digite um endereço IP: " x
echo -e "\n"
for i in {1..4}; do
	oc_a=$(echo $x | cut -d '.' -f $i)
	oc_b=$(printf "%08d" $(bc <<< "obase=2;$oc_a"))
	echo -e "\n"
	echo "Octeto #$i -> $oc_a ; em Binário $oc_b"
done

