#! /bin/bash
x=1
while [ $x -le 10 ]
do
	clear
	echo "        DIG"
	echo ""
	echo "Resolucion directa"
	read -p "Nombre del registro: " nr
	echo ""
	dig $nr | grep $nr*
	echo ""
	echo ""
	echo "Resolucion inversa"
	read -p "Ip del registro: " ir
	echo ""
	dig -x $ir | grep PTR*
	echo ""
	read -p "Listo."
done
