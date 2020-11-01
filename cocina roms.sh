#! /bin/bash

#colores
cyan='\e[0;36m'
morado='\e[1;35m'
NC='\e[0m'

clear
	echo ""
	echo ""
	echo ""
        echo ""
        echo ""
        echo ""
        echo ""
        echo -e "                       			   Relaizado por ${cyan}djmanri3${NC}"
	echo ""
	echo -e "             			        Uso exclusivo para ${cyan}Lineage OS${NC}"
        echo ""
	echo "                                     __  _                            _ _____"
	echo "                                ____/ / (_)___ ___  ____ _____  _____(_)__  /"
	echo '                               / __  / / / __ `__ \/ __ `/ __ \/ ___/ / /_ < '
	echo "                              / /_/ / / / / / / / / /_/ / / / / /  / /___/ / "
	echo "                              \__,_/_/ /_/ /_/ /_/\__,_/_/ /_/_/  /_//____/  "
	echo "                                  /___/                                      "
        echo ""
        echo ""
        echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""

# para tenerlo al dia
sudo apt-get update
export USE_CCACHE=1
ccache -M 50G
export CCACHE_COMPRESS=1

# instalacion de programas necesarios
clear
read -p "- Desea instalacion de programas necesarios s/n " pregunta0
if [ "$pregunta0" = "s" ]; then
	sudo apt-get install bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5-dev libsdl1.2-dev libssl-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev python openjdk-11-jdk repo
else
	echo ""
fi
# inicio de sesion en github
read -p "- Desea inicio de sesion en github s/n " pregunta1
if [ "$pregunta1" = "s" ]; then
	read -p " ---- introduce tu nombre de usuario de github: " a
	read -p " ---- introduce tu email de github: " b
	echo ""
	echo ""
	echo ""
	echo "        Nombre de usuario: $a"
        echo "        Direccion de correo: $b"
	echo ""
        echo ""
        echo ""
	read -p "¿Es corecto? Presione Enter para continuar o ctrl-c para salir ..."
	git config --global user.name $a
	git config --global user.email $b
	echo ""
	echo "Agregacion realizada con exito"
	echo ""
else
	echo ""
fi

#creacion de directorios
read -p "- Desea creacion de directorios s/n " pregunta2
if [ "$pregunta2" = "s" ]; then
	mkdir -p ~/bin
	mkdir -p ~/android/lineage
	echo ""
else
	echo ""
fi

#sincronizacion con git-repo
read -p "- Desea sincronizacion con git-repo s/n " pregunta3
if [ "$pregunta3" = "s" ]; then
	curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
	chmod a+x ~/bin/repo
else
	echo ""
fi

#Sincronizacion con el repo de lineage
read -p "- Desea Sincronizacion con el repo de lineage s/n " pregunta4
if [ "$pregunta4" = "s" ]; then
	read -p " ---- Introduce la version de lineage (lineage-version) (ejemplo lineage-16.0): " c
	echo ""
        echo ""
        echo ""
        echo "        Version de lineage introducida: $c"
        echo ""
        echo ""
        echo ""
        read -p "¿Es corecto? Presione Enter para continuar o ctrl-c para salir ..."
	cd ~/android/lineage
	repo init -u https://github.com/LineageOS/android.git -b $c
	repo sync
	echo ""
	echo ""
	echo "Sincronización completada"
	echo ""
	echo ""
else
	echo ""
fi


#creacion de la rom del dispositivo
read -p "- Desea la creacion de la rom para su dispositivo s/n " pregunta5
if [ "$pregunta5" = "s" ]; then
echo ""
read -p " ---- Introduce el nombre en clave de su dispositivo: " d
	echo ""
        echo ""
        echo ""
        echo "        Nombre en clave de su dispositivo: $d"
        echo ""
        echo ""
        echo ""
        read -p "¿Es corecto? Presione Enter para continuar o ctrl-c para salir ..."
	clear
	echo "Este proceso va ha llevar mucho tiempo..."
	echo "Variara segun la potencia de nuestro ordenador"
	echo ""
	read -p "Presione Enter para continuar..."
	source build/envsetup.sh
	breakfast $d
	croot
	brunch $d
	i = 1
else
	echo ""
fi
if [ $i = "1"  ]; then
	echo ""
	read -p "¡Compilacion exitosa!"
	cd $OUT
	ls -l

	echo -e "Cocina de Lineage OS ${cyan}djmanri3${NC}"
 	echo ""
        echo ""
        echo ""
        echo ""
        echo -e "            ${cyan}Script Realizado por djmanri3${NC}"
        echo "         ${morado}Espero que os haya servido de ayuda$[NC]"
        echo ""
        echo ""
        echo ""
        echo ""
        read -p "Presione Enter para finalizar... "


else
	clear
	echo -e "Cocina de Lineage OS ${cyan}djmanri3${NC}"
	echo ""
	echo ""
	echo ""
	echo ""
	echo -e "          ${cyan}Script Realizado por djmanri3${NC}"
	echo -e "       ${morado}Espero que os haya servido de ayuda${NC}"
	echo ""
	echo ""
	echo ""
	echo ""
	read -p "Presione Enter para finalizar... "
fi





