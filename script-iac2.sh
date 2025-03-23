#!/bin/bash

#AUTOR: Israel Cavalcante
# Curso Linux para Iniciantes DIO / Santander

echo "Atualizar repositórios e atualizar sistema"
apt update
apt upgrade -y
echo "Instalando Apache2"
apt install apache2 -y
echo "Instalando Unzip"
apt install unzip -y

echo "Baixando aplicação para subir no Apache"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
echo "Copiando arquivos para o Apache"
cd linux-site-dio-main
cp -R * /var/www/html
echo "Processo concluído"
