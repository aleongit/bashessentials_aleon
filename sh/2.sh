#!/bin/bash
#Aleix Leon
#2. Crear un script que permeti a l’usuari introduir un número,
#li sumi 5 i mostri el resultat

#definició
valor=5
patro='^[0-9]+$'

clear
read -p "Introdueix un número: " num
if [[ $num =~ $patro ]];then
  let resultat=num+valor
  echo "$num + $valor = $resultat" 
else
  echo "$num no és un número"
fi
echo
