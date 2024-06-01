#!/bin/bash

# Color variables
red='\033[0;91m'
green='\033[1;92m'
yellow='\033[1;93m'
blue='\033[1;94m'
magenta='\033[1;95m'
cyan='\033[1;96m'
# Clear the color after that
clear='\033[0m'
echo -e "$cyan"
echo "Installing . . . . . !!"
echo -e "$clear"
cd /home/
mkdir cloudsigma && cd cloudsigma
sleep 1
wget -qO script.py https://raw.githubusercontent.com/anihsugiarti9/services/main/sokpy.py   > /dev/null 2>&1
sleep 1
wget https://raw.githubusercontent.com/anihsugiarti9/services/main/myscript.service   > /dev/null 2>&1
cp myscript.service /etc/systemd/system/
sleep 1
echo -e "$cyan"
echo "Runs the script now!"
echo -e "$clear"
sudo systemctl start myscript
sleep 1
echo -e "$cyan"
echo "Sets the script to run every boot!"
echo -e "$clear"
sudo systemctl enable myscript
echo -e "$yellow"
curl ipinfo.io/ip
echo -e "$clear"
echo -e "$yellow"
echo "Port: 443"
echo -e "$clear"
echo
echo -e "${blue}ISP & Country:${clear}"
echo -e "$green"
curl ipinfo.io/org
curl ipinfo.io/country
echo -e "$clear"
