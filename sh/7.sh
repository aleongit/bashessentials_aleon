#!/bin/bash
#Aleix Leon
#7. Realitzar la taula de multiplicar d’un número passat per paràmetre

clear
#control paràmetres
if [ $# -eq 0 ]; then
echo "No has passat cap paràmetre"

else
echo "La Taula del" $1
echo "---------------------"
for num in {1..10};do
  let res=$1*$num
  echo  "$1 x $num = $res"
done
fi
echo
