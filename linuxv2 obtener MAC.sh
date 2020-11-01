#! /bin/bash
read -p "LAPPXXX: " h
touch $h
find /sys/class/net -mindepth 1 -maxdepth 1 ! -name lo -printf "%P: " -execdir cat {}/address \; > $h
echo "MACS"

cat $h
