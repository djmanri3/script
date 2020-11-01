#! /bin/bash
clear
sudo apt-get update
sudo apt-get upgrade

sudo apt-get install dnsmasq hostapd
sudo systemctl stop dnsmasq
sudo systemctl stop hostapd
echo ""
echo ""
echo "EJEMPLO"
echo "interface wlan0"
echo "    static ip_address=192.168.4.1/24"
echo "    nohook wpa_supplicant"
echo ""
echo ""
read -p "Ahora procederemos a configurar una ip estatica del adaptador wifi... pulse enter para continuar"

sudo nano /etc/dhcpcd.conf
sudo service dhcpcd restart

echo ""
echo ""
read -p "Ahora vamnos a configurar el dhcp de dnsmasq"
sudo mv /etc/dnsmasq.conf /etc/dnsmasq.conf.orig
sudo nano /etc/dnsmasq.conf

echo ""
echo ""
echo "Ejemplo HOSTAPD punto de acceso"
echo ""
echo "interface=wlan0"
echo "driver=nl80211"
echo "ssid=rpi_invitado"
echo "hw_mode=a"
echo "channel=40"
echo "macaddr_acl=0"
echo "ignore_broadcast_ssid=0"
echo "auth_algs=1"
echo "wpa=2"
echo "wpa_passphrase=xxxxxxxx"
echo "wpa_key_mgmt=WPA-PSK WPA-PSK-SHA256"
echo ""
echo ""
read -p "Pulse enter para configurar hostapd..."
sudo nano /etc/hostapd/hostapd.conf

echo ""
echo "pulse enter para continuar"
read -p "Descomenta DAEMON.CONF y mete entre las comillas /etc/hostapd/hostapd.conf y en DAEMON_OPTS=-B CON COMILLAS EL -B"
sudo nano /etc/default/hostapd

echo "arancando servicios..."
sudo systemctl start hostapd
sudo systemctl start dnsmasq

read -p "Arrancados pulse enter para continuar..."

echo ""
echo ""
echo "configurando iptables"
read -p "Descomentar net.ipv4.ip_forward=1 pulse enter para continuar"
sudo nano /etc/sysctl.conf
sudo iptables -t nat -A  POSTROUTING -o eth0 -j MASQUERADE
sudo sh -c "iptables-save > /etc/iptables.ipv4.nat"
echo ""
echo ""
echo "iptables-restore < /etc/iptables.ipv4.nat"
read -p "Añade lo anterior antes del exit 0 enter para continuar"
sudo nano /etc/rc.local

echo ""
echo ""
echo "PROCESO FINALIZADO CON EXITO"
read -p "REALIZADO POR DJMANRI3 pulse enter para finalizar ..."
