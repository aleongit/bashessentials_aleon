#!/bin/bash
#Aleix Leon
#18. Dissenyeu un script que digui quins serveis estan en actiu (enabled) i que
#els guardi en un fitxer anomenat “serveis_actius_data_actual.txt”
#(Busqueu informació sobre la comanda “systemctl list-unit-files”).

clear

#date +%d\ %m\ %y
avui=$( date +%y%m%d )
echo $avui

fitxer=serveis_actius_$avui.txt
fitxer2=serveis_actius_cut_$avui.txt

#echo $fitxer
echo "Generant fitxers amb serveis actius ara mateix ..."
systemctl list-unit-files --state=enabled > $fitxer
systemctl list-unit-files --state=enabled | cut -d' ' -f1 > $fitxer2
echo -e "Fitxers generats\n"

#mostrem 1r fitxer
cat $fitxer | more
