#!/bin/bash
clear
echo " ------------------------ "
echo "|     YouTube MP3        |"
echo "|      djmanri3          |"
echo " ------------------------ "
echo ""
echo ""
echo "Cargando [===________________]"
sleep 1m
clear
echo " ------------------------ "
echo "|     YouTube MP3        |"
echo "|      djmanri3          |"
echo " ------------------------ "
echo ""
echo ""
echo "Cargando [=========__________]"
sleep 1m
clear
echo " ------------------------ "
echo "|     YouTube MP3        |"
echo "|      djmanri3          |"
echo " ------------------------ "
echo ""
echo ""
echo "Cargando [==============_____]"
sleep 1m
clear
echo " ------------------------ "
echo "|     YouTube MP3        |"
echo "|      djmanri3          |"
echo " ------------------------ "
echo ""
echo ""
echo "Cargando [===================]"
clear
echo -e '\e[31m  __   __         \e[0m   _____      _            __  __ ____ _____ '
echo -e '\e[31m  \ \ / /__  _   _\e[0m  |_   _|   _| |__   ___  |  \/  |  _ \___ / '
echo -e '\e[31m   \ V / _ \| | | |\e[0m   | || | | | |_ \ / _ \ | |\/| | |_) ||_ \ '
echo -e '\e[31m    | | (_) | |_| |\e[0m   | || |_| | |_) |  __/ | |  | |  __/___) |'
echo -e '\e[31m    |_|\___/ \__,_|\e[0m   |_| \__,_|_.__/ \___| |_|  |_|_|  |____/ '
echo ""
echo ""
read -p "Quieres instalarme? si y no: " p
if [ $p == 'si' ];
then
	sudo apt-get update
	sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
	sudo chmod a+rx /usr/local/bin/youtube-dl
	sudo apt-get install ffmpeg
	echo ""
	echo "==================================="
	read -p "Instalacion Completada pulse enter"
fi
clear
echo "    ____      ____  ______    _   ______  _________"
echo "   / __ \    / /  |/  /   |  / | / / __ \/  _/__  /"
echo "  / / / /_  / / /|_/ / /| | /  |/ / /_/ // /  /_ < "
echo " / /_/ / /_/ / /  / / ___ |/ /|  / _, _// / ___/ / "
echo "/_____/\____/_/  /_/_/  |_/_/ |_/_/ |_/___//____/  "
echo ""
read -p "          En que mes estamos (mes_año): " d
read -p "          Introdduce la url del video: " u


echo "================================================="
mkdir $d
cd $d
echo "================================================="
pwd
echo "================================================="
read -p "Pulse enter para continuar si no ctrl +z "
clear
sudo youtube-dl -i -x --audio-format flac $u
cd ..
clear
echo "     OPERACIÓN"
echo "     COMPLETADA"
echo ""
echo "GRACIAS POR UTILIZARME"
