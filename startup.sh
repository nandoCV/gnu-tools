#!/bin/bash
# @creador: ferncastillo
# @fecha: 03-04-2020
# @paquete: Instalación minima de inicio

clear
sudo apt-get install figlet -y

clear
figlet $USER
echo "Sistema de instalación basica de servicios de desarrollo"
echo "Esta aplicación instala los siguientes servicios:"
echo "	> CURL"
echo "	> git"
echo "	> Apache2"
echo "	> PHP"
echo "	> MySQL"
echo "  > Mysql Workbench"
echo "---------------------------"
echo "  > NodeJS"
echo "  > MongoDB"
echo "  > Express Generator"
echo "  > Angular-CLI"
echo "  > Ionic"
echo "---------------------------"
echo "  > Python3"
echo "  > Anaconda Navigator"
echo "  > R"
echo "  > R Studio"

echo "INICIAMOS LA INSTALACIÓN:"
echo ""
echo "--------------------------------------------------------------------"
sudo apt-get update
sudo apt-get dist-upgrade -y
echo ""
echo "--------------------------------------------------------------------"
echo "Instalamos herramientas"
sudo apt-get install curl git htop lm-sensors conky -y
echo ""
echo "--------------------------------------------------------------------"
echo "APACHE 2"

sudo apt-get install apache2 -y
sudo ufw app list
sudo ufw allow 'Apache'
sudo ufw status

echo "--------------------------------------------------------------------"
echo "MYSQL"
sudo apt-get install mysql-server mysql-workbench -y

echo "--------------------------------------------------------------------"
echo "PHP"
sudo apt-get install php libapache2-mod-php php-mysql -y

echo "-------------------------------------------------------------------"
echo "INSTALACION DE NODEJS"
curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
sudo apt-get install -y nodejs

echo "-------------------------------------------------------------------"
echo "INSTALACION DE FRAMEWORKS NODEJS"
sudo npm install -g express-generator @angular/cli @ionic/cli

echo "-------------------------------------------------------------------"
echo "INSTALACION DE MONGODB"
wget https://repo.mongodb.org/apt/ubuntu/dists/bionic/mongodb-org/4.2/multiverse/binary-arm64/mongodb-org-server_4.2.5_arm64.deb
sudo dpkg -i mongodb-org-server_4.2.5_arm64.deb

echo "-------------------------------------------------------------------"
echo "INSTALACION DE ANACONDA NAVIGATOR"
wget https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh
sudo chmod a+x Anaconda3-2020.02-Linux-x86_64.sh
sudo ./Anaconda3-2020.02-Linux-x86_64.sh
sudo apt-get install r-base -y
wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.5033-amd64.deb
sudo dpkg -i rstudio-1.2.5033-amd64.deb

sudo apt -f install
sudo apt autoremove

figlet "Instalacion terminada"
exit

