#!/bin/bash

echo "Atualizando o servidor"

apt update
apt upgrade -y

echo "Instalando o apach2"

apt install apache2 -y
apt install unzip -y

echo "tirando o arquivo que tem dentro da pasta do apache"

rm -rf /var/www/html/*

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "finalizando"
