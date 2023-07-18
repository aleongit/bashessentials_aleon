#!/bin/bash
#Aleix Leon
#17. Un administrador d’una màquina Linux ha de revisar dia a dia si hi ha
#connexió cap a totes les màquines contingudes al fitxer /etc/hosts. Per ferho
#té la comanda ping que envia i rep un paquet cap a la màquina destí.
#El valor retornat per ping pot ser:
#0 – La màquina destí està viva, contesta normal.
#1 – La màquina destí no contesta.
#2 – Hi ha hagut algun error.
#Construïu un script que comprovi la connectivitat amb totes les
#màquines contingudes al fitxer /etc/hosts i mostri el nom de les màquines
#indicant el seu estat de la següent forma:
# Resposta de màquines de /etc/hosts:
# infla: està viva.
# rebost: NO està viva.
# collbaix: error en ping.
#Recordeu que el fitxer hosts pot tenir comentaris. A part, redirigiu la
#sortida i error del ping per no confondre la sortida del script.

#/etc/hosts aleix
# les ip 4 tenen separadors tab /t (tab = separador per defecte 'cut')
# les ip 6 separador és espai
# transformo abans del cut, amb tr -s

#127.0.0.1	localhost
#127.0.1.1	ubuntu
#
#proves per script
#8.8.8.8	dnsgoogle
#192.168.1.99	inventada
#
# The following lines are desirable for IPv6 capable hosts
#::1     ip6-localhost ip6-loopback
#fe00::0 ip6-localnet
#ff00::0 ip6-mcastprefix
#ff02::1 ip6-allnodes
#ff02::2 ip6-allrouters

clear
fitxer=/etc/hosts

#IFS: Internal Field Separator, per defecte 'espai'
#canvio separador per defecte a salt línia
IFS=$'\n'
#echo $IFS

#grep -v "#" extrec linies comentaris
#grep -v "f" extrec línies reservades per ip 6 en un futur i que no van
#tr -s substitueix un caracter per un altre (espai per tab) i sortida cap el cut que només reb tabulacions i agafo 1a col
#sed -e '/^$/d' treu línies buides, però aquí no cal

for el in $( cat $fitxer | grep -v "#" | tr -s ' ' '\t' ); do
#for el in $( cat $fitxer); do
   #echo $el
   #agafo ip a columna 1 (1r tab)
   iphost=$( echo $el | cut -f1 )
   #agafo nom host a columna 2 (2n tab)
   nomhost=$( echo $el | cut -f2 )
   #-c cops -W segons màxim
   #>& redirigeix sortida + errors
   ping -c2 -W2 $iphost >& /dev/null
   #!comentar sempre $? perquè perd el valor anterior
   #echo $?
   case $? in
   	0) echo "$nomhost ...  infla"	;;
   	1) echo "$nomhost ... rebost"	;;
        2) echo "$nomhost ... collbaix"	;;
   	*) echo "$nomhost ... nidea"	;;
   esac
done
echo
