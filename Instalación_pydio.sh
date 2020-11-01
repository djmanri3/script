#! /bin/bash
clear
echo "                                     __  _                            _ _____"
echo "                                ____/ / (_)___ ___  ____ _____  _____(_)__  /"
echo '                               / __  / / / __ `__ \/ __ `/ __ \/ ___/ / /_ < '
echo "                              / /_/ / / / / / / / / /_/ / / / / /  / /___/ / "
echo "                              \__,_/_/ /_/ /_/ /_/\__,_/_/ /_/_/  /_//____/  "
echo "                                  /___/                                      "
echo ""
echo "                              Instalador de pydio                            "
echo ""

if [[ $EUID -ne 0 ]]; then
   echo "--> Es necesario ejecutarse con root"
   exit 1
fi

sudo echo "deb https://download.pydio.com/pub/linux/debian/ stretch main" > /etc/apt/sources.list.d/pydio.list
sudo echo "deb https://API_KEY:API_SECRET@download.pydio.com/auth/linux/debian/ stretch main" >> /etc/apt/sources.list.d/pydio.list
sudo wget -qO - https://download.pydio.com/pub/linux/debian/key/pubkey | sudo apt-key add -
echo ""
echo ""
echo "--> Repositorio agregado..."
sleep 2
clear
echo "--> Instalando apt-transport-https"
sleep 4
clear
sudo apt-get install apt-transport-https
sudo apt-get update
echo ""
echo ""
echo "--> Instalado apt-transport-https"
sleep 2
clear
echo "--> instalando pydio..."
sleep 4
clear
sudo apt-get install pydio
sudo apt-get install pydio-all
sudo apt-get install pydio-enterprise
sudo apt-get install php-xml
echo ""
echo ""
echo "--> Instalado pydio"
sleep 4
clear
echo "--> Configurando php.ini..."
sleep 1
echo "upload_max_filesize = 10M" >> /etc/php/*.*/cli/php.ini
echo "post_max_size = 20M" >> /etc/php/*.*/cli/php.ini
echo "max_execution_time = 180" >> /etc/php/*.*/cli/php.ini
echo ""
echo "--> Configuración exitosa"
sleep 4
clear
echo "--> Se reiniciara servicio apache2..."
sudo service apache2 stop
sudo service apache2 start
echo ""
echo "===================================================================="
echo "                        http://localhost/pydio                      "
echo "--------------------------------------------------------------------"
read -p "--> Para aceder es a traves del puerto 80 Pulse enter para continuar"

clear
echo "                                     __  _                            _ _____"
echo "                                ____/ / (_)___ ___  ____ _____  _____(_)__  /"
echo '                               / __  / / / __ `__ \/ __ `/ __ \/ ___/ / /_ < '
echo "                              / /_/ / / / / / / / / /_/ / / / / /  / /___/ / "
echo "                              \__,_/_/ /_/ /_/ /_/\__,_/_/ /_/_/  /_//____/  "
echo "                                  /___/                                      "
echo ""
echo "                              Instalacion de pydio terminada                 "
echo ""
