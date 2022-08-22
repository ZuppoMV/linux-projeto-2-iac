#!/bin/bash

echo "atualizando o servidor..."

apt-get update 
apt-get apgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "baixando e aplicando ...."

cd /tmp
apt-get install wget -y
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

