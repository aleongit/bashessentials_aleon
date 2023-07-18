#!/bin/bash
#Aleix Leon
#11. Realitza un script que comprovi si la segona columna d’un fitxer que conté
#només una línia conté la paraula 'aula'

#provem funcions

#funció conta línies fitxer
#retorna true o false si fitxer 1 línia
function linies()
{
l=$( wc -l $1 | cut -d' ' -f1 )
#echo $l
if [ $l = 1 ]; then
true
else
false
fi
}

#funció llista paraules d'un fitxer
function paraules()
{
#IFS: Internal Field Separator, per defecte 'espai'
#IFS=$'\n'
#echo $IFS
#echo $1
for el in $( cat $1 ); do
echo "Paraula: $el"
done
}

#funció comprova 2a paraula = columna
function segona()
{
paraula=$( cat $1 | cut -d' ' -f2 )
echo "2a paraula: $paraula"
if [ $paraula = "aula" ]; then
true
else
false
fi
}

#declarem fitxers
#f1=fitxer
#f2=fitxeraula
#f3=fitxer2linies
#f4=fitxer5linies

clear

#for que comprova tots els fitxers de carpeta de nom 'fitxer*'
for fitxer in $( ls fitxer* ); do
echo -e "\nNom fitxer: $fitxer"

#echo $? per retorn funció

#si fitxer té 1 línia
if linies $fitxer; then
   echo "ok fitxer 1 línia"
   #si fitxer té paraula 'aula' a 2a col
   if segona $fitxer; then
      echo "ok paraula 'aula' a 2a columna" 
      #mostrem paraules
      echo -e "\nParaules de fitxer $fitxer:"
      paraules $fitxer
   else
      echo "no trobada paraula aula a 2a columna"
   fi
else
   echo "el fitxer té més d'una línia"
fi
done
echo
