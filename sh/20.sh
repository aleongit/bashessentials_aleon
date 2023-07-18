#!/bin/bash
#Aleix Leon
#20. Donat un fitxer on a cada línia hi ha guardades les diferents compres
#realitzades a un proveïdor: “comprador+espai+unitats_comprades”,
#realitza un script que sumi per cada comprador el total d’unitats
#comprades i mostri el resultat per pantalla en format “comprador
#total_unitats”.

clear
fitxer=compres

#mostrem compres
echo "Compres Proveïdors"
echo "------------------"
cat $fitxer
echo

#provarem arrays
#agafem proveïdors únics (uniq) a una array
proveidors=( $( cat $fitxer | cut -d " " -f1 | sort | uniq ) )

#echo ${proveidors[0]}
#echo ${proveidors[1]}
#echo ${proveidors[2]}

# amb * mostra tots
#echo ${proveidors[*]}
# amb ! mostra índexs
#echo ${!proveidors[*]}

#per cada proveïdor mirar les seves compres i acumular total a 2a array
i=0
for p in ${proveidors[*]}; do
   #echo $p
   total=0
   for un in $( cat $fitxer | grep $p | cut -d " " -f2 ); do
      #unitats=$(cat $fitxer | grep $p | cut -d " " -f2 )
      let total=total+$un
      #echo $total
   done
   totals[$i]=$total
   let i=i+1
   #echo $1
done

#echo $unitats
#echo ${totals[*]}

echo "Proveïdors     Total Unitats"
echo "----------------------------"
for i in ${!proveidors[*]}; do
   #echo $i
   echo ${proveidors[$i]} " ... " ${totals[$i]}
done
echo
