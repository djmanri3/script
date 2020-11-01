#! /bin/bash
x=1
while [ $x -le 10 ]
do
	clear
	echo "     NSLOOKUP"
	echo ""
	echo "ctrl +z para salir"
	echo ""
	read -p "Nombre del registro: " nr
	echo ""
	nslookup $nr | grep Name*
	nslookup $nr | grep Address*
	nslookup $nr | grep Non*
	nslookup $nr | grep can*
	echo ""
	read -p "Si sale solo 127.0.0.xx no esta operativa"
done
