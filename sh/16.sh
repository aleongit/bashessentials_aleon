#!/bin/bash
#Aleix Leon
#16. Fer un script que mostri un menú de tres opcions (i implementeu les
#funcionalitats), la primera borra un fitxer llegit pel teclat, la segona
#visualitza un fitxer també llegit per teclat i la tercera surt del programa

#definició colors
RED='\033[0;41;30m'
STD='\033[0;0;39m'

#funció existeix fitxer, directament retornarà true o false
function existeix()
{
  [ -f $1 ]
}

#funció pause
function pausa()
{
 read -s -n 1 -p "Prem una tecla per continuar . . ."
 echo ""
}

#funció menú fitxers
function menu_fitxers()
{
#echo $fitxers
#echo $opcio

#comanda segons opció
if [ $opcio -eq 1 ]; then
accio="esborrant fitxer ..."
comanda=rm

elif [ $opcio -eq 2 ]; then
accio="mostrant fitxer ..."
comanda=cat
fi
echo $accio

#mostrem fitxers carpeta actual
echo "Fitxers carpeta actual"
select fitxer in $fitxers; do
   echo $fitxer
   #mostrem path complet fitxer
   readlink -e $fitxer
   case $fitxer in
	Sortir)   break		   	;;
	*)	  echo
		  echo $accio && sleep 2 && echo
		  $comanda $fitxer
		  echo
		  #si esborrem fitxer: sortim, perquè caldria refrescar fitxers menú
		  #i no ho he aconseguit
		  if [ $opcio -eq 1 ]; then
		  break
		  fi		   	;;
   esac
done
}

#
opcio=0
while true; do
clear
  echo "----------------------"
  echo "    TENS 3 OPCIONS    "
  echo "----------------------"
  echo "1. Esborrar fitxer"
  echo "2. Llegir fitxer"
  echo "3. Sortir"
  echo

  read -p "Escull opció [ 1 - 3] " opcio
  case $opcio in
    1)  echo
        #fitxers de carpeta actual i que no siguin scripts sh
        #(per seguretat)
        fitxers=$( find -type f -not \( -iname "*\.sh" \) )
        #afegim opció sortir
        fitxers=$fitxers" Sortir"
	menu_fitxers
	pausa				;;
    2)  echo
	fitxers=$( find -type f )
	#afegim opció sortir
	fitxers=$fitxers" Sortir"
	menu_fitxers
	pausa				;;
    3)  #exit 0 per sortir
	echo "adeu andreu" && break 		;;
    *)  echo "Opció no definida"
	echo -e "${RED}Error...${STD}" && sleep 1 ;;
  esac
done
