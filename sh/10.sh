#!/bin/bash
#Aleix Leon
#10. Realitza un script que comprovi si estem a 25 d’aquest mes, si és així,
#mostrarà el text “avui és 25 del mes (el mes que sigui)”.

clear

D=25
#date +%d\ %m\ %y

if [ $( date +%d ) -eq $D ]; then
echo "avui és $D de $( date +%m )"
else
echo "avui no és $D, és" $( date +%d )
fi
echo
