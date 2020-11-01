#! /bin/bash
echo ""
echo "Permisos de root para actualizar e instalar wget y dpkg"
echo ""
sudo apt-get update
sudo apt-get install wget dpkg
clear

echo "                                     __  _                            _ _____"
echo "                                ____/ / (_)___ ___  ____ _____  _____(_)__  /"
echo '                               / __  / / / __ `__ \/ __ `/ __ \/ ___/ / /_ < '
echo "                              / /_/ / / / / / / / / /_/ / / / / /  / /___/ / "
echo "                              \__,_/_/ /_/ /_/ /_/\__,_/_/ /_/_/  /_//____/  "
 echo "                                  /___/                                      "
echo ""
echo "Tipo de arquitecturas compatibles"
echo "- x64"
echo "- arm64"
echo "- arm32"
read -p "¿Con que arquitectura cuenta su equipo?: " a

if [ $a = "x64" ]
then
	wget https://github.com/MediaBrowser/Emby.Releases/releases/download/4.5.2.0/emby-server-deb_4.5.2.0_amd64.deb
	sudo dpkg -i emby-server-deb_4.5.2.0_amd64.deb
	sudo apt-get install -f
	sudo dpkg -i emby-server-deb_4.5.2.0_amd64.deb

elif [ $a = "arm64" ]
then
	wget https://github.com/MediaBrowser/Emby.Releases/releases/download/4.5.2.0/emby-server-deb_4.5.2.0_arm64.deb
	sudo dpkg -i emby-server-deb_4.5.2.0_arm64.deb
	sudo apt-get install -f
	sudo dpkg -i emby-server-deb_4.5.2.0_arm64.deb

elif [ $a = "arm32" ]
then
	wget https://github.com/MediaBrowser/Emby.Releases/releases/download/4.5.2.0/emby-server-deb_4.5.2.0_armhf.deb
	sudo dpkg -i emby-server-deb_4.5.2.0_armhf.deb
	sudo apt-get install -f
	sudo dpkg -i emby-server-deb_4.5.2.0_armhf.deb

else
	echo "Arquitectura introducidad erronea"
fi
echo ""
echo    "===================================================================================="
echo    "                               http://localhost:8096"
echo 	"------------------------------------------------------------------------------------"
read -p "RECUERDA: para acceder a emby es a traves del puerto 8096 Pulse enter para continuar"
clear
echo "                                     __  _                            _ _____"
echo "                                ____/ / (_)___ ___  ____ _____  _____(_)__  /"
echo '                               / __  / / / __ `__ \/ __ `/ __ \/ ___/ / /_ < '
echo "                              / /_/ / / / / / / / / /_/ / / / / /  / /___/ / "
echo "                              \__,_/_/ /_/ /_/ /_/\__,_/_/ /_/_/  /_//____/  "
echo "                                  /___/                                      "
