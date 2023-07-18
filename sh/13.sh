#!/bin/bash
#Aleix Leon
#13. Fer un script que rebi per paràmetre el nom d’un fitxer, verifiqui si existeix
#i que és un fitxer comú (permisos de lectura i escriptura) i el converteixi en
#executable per l’usuari i pel grup i mostri l’estat final dels permisos.

clear
#echo $1
#echo $#
#control paràmetres
if [ $# -eq 0 ]; then
echo "No has passat cap paràmetre"
else
  # si existeix fitxer
  if [ -f $1 ]; then

  # si existeix fitxer comú (rw)
  if [ -r $1 ] && [ -w $1 ]; then
    echo -e "\n$1 existeix i té els permisos rw"

  #comprovem permís x
  if ! [ -x $1 ]; then
    echo -e "\nAfegint permís +x ...\n"
    sleep 1
    chmod ug+x $1
    #paràmetres find %f fitxer / ... / %m permís octal / %M permís simbòlic
    find $1 -printf "%f:%p:%u:%g:%m:%M\n"
  else 
    echo -e "\n$1 ja té permís x, bon intent\n"
    find $1 -printf "%f:%p:%u:%g:%m:%M\n"
  fi
  else
    echo -e "\n$1 existeix però NO té permisos rw"
  fi
  else
    echo -e "\n$1 NO existeix" 
  fi
fi
echo
