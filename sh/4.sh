#!/bin/bash
#Aleix Leon
#4. Fer un script que permeti introduir per paràmetre el nom d’una carpeta. Si
#existeix aquesta carpeta comprimida (amb extensió .tar.gz), borreu-la i si
#no existeix, comprimir la carpeta.

clear
#echo $1
#echo $#
#control paràmetres
if [ $# -eq 0 ]; then
echo "No has passat cap paràmetre"

else
# si existeix carpeta (paràmetre %1)
if [ -d $1 ]; then
  echo "Existeix carpeta $1"
#si existeix carpeta, mirem si està comprimida
#si està compromida (fitxer), esborra fitxer comprimit
  #echo $1.tar.gz
  if [ -f $1.tar.gz ]; then
   echo -e "Existeix carpeta $1 comprimida\n"
   echo "Esborrant fitxer $1.tar.gz ..." && sleep 1
    rm $1.tar.gz
#si no està comprimida, comprimeix
  else
    echo -e "No existeix carpeta $1 comprimida\n"
    echo "Comprimint carpeta $1 ..." && sleep 1
    tar czvf $1.tar.gz $1 && echo "...Fet"
  fi
else
  echo "NO existeix carpeta $1"
fi
fi
echo
