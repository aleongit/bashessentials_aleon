#!/bin/bash
#Aleix Leon
#14. Realitzar un script que rebi varis paràmetres i ens digui quants d’aquests
#són directoris i quants són fitxers.

clear
#echo $1
#echo $#
#control paràmetres
if [ $# -eq 0 ]; then
echo "No has passat cap paràmetre"
else

#inicialitzem
valors=$*
f=0
d=0
x=0

for el in $valors; do
#echo $el
if [ -d $el ]; then
   echo "$el és un DIRECTORI"
   #maneres d'incrementar variable
   #d=$((d+1))
   #((d+=1))
   #((d++))
   #let "d=d+1"
   #let "d+=1"
   let "d++"
elif [ -f $el ]; then
   echo "$el és un FITXER"
   let "f++"
else
   echo "$el no és un DIRECTORI ni un FITXER"
   let "x++"
fi
done
echo -e "\nNº Directoris: $d"
echo "Nº Fitxers: $f"
echo "Nº Altres: $x"
fi
echo
