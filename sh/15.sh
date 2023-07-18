#!/bin/bash
#Aleix Leon
#15. Crear un script que demani introduir la ruta d’un directori per teclat (s’ha
#de validar que el text introduït sigui un directori), ens digui quants fitxers i
#quants directoris hi ha dins d’aquest directori.

clear
read -p "Introdueix directori: " dir

# si existeix carpeta
if [ -d $dir ]; then
echo "Directori $dir existeix"
#busquem amb find i contem el què ha trobat redirigint canal errors
nd=$( find $dir -type d 2> /dev/null | wc -l )
nf=$( find $dir -type f 2> /dev/null | wc -l )
echo -e "\nNº Directoris: $nd"
echo "Nº Fitxers: $nf"
else
echo "Directori $dir NO existeix"
fi
echo
