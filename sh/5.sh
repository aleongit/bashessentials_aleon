#!/bin/bash
#Aleix Leon
#5. Crear un script que busqui els fitxers que tinguin una determinada extensió
#que s’indicarà per paràmetre.

clear
#echo $1
#echo $#
#control paràmetres
if [ $# -eq 0 ]; then
echo "No has passat cap paràmetre"

else
#suposem buscar a carpeta actual
echo -e "Fitxers *.$1 de carpeta actual\n"
#-iregex, no distingeix majúscules de mínuscules
find -type f -iregex ".*\.$1" | sort
fi
echo
