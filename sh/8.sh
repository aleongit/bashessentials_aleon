#!/bin/bash
#Aleix Leon
#8. Escriu un script que demani per teclat el nom, després els dos cognoms,
#quedi esperant 5 segons i després mostri per pantalla un missatge de
#l’estil "El teu nom complet és ....."

clear
read -p "El teu nom: " nom
read -p "El teu 1r cognom: " c1
read -p "El teu 2n cognom: " c2
echo -e "\nprocessant tanta informació..."
sleep 5
echo -e "\nEl teu nom complet és $nom $c1 $c2\n"
