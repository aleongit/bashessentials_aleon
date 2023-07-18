#!/bin/bash
#Aleix Leon
#12. Comprovar si el directori passat per paràmetre ja existeix; si existeix que
#mostri un missatge. Si no existeix l’haurà de crear i dir que l’ha creat.

clear
#echo $1
#echo $#
#control paràmetres
if [ $# -eq 0 ]; then
echo "No has passat cap paràmetre"
else
# si existeix carpeta (paràmetre %1)
if [ -d $1 ]; then
echo "$1 existeix"
else
echo "$1 NO existeix"
echo "Creant carpeta ..." && sleep 1
mkdir $1
echo "Carpeta $1 creada" 
fi
fi
echo
