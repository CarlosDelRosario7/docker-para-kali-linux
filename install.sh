#!/bin/bash

# Este script instala Docker en Kali Linux
#
# Autor: DannyHack
# Fecha: 15/09/2023

if [ "$EUID" -ne 0 ]
  then echo -ne "[*] Por favor, ejecuta como root"
  exit
fi

echo -ne "[*] Instalando dependencias..."
sudo apt install apt-transport-https ca-certificates curl gnupg lsb-release software-properties-common pass uidmap -y

echo -ne "[*] Instalado docker..."
sudo dpkg -i ./containerd.io_1.6.9-1_amd64.deb ./docker-ce-cli_24.0.6-1\~debian.11\~bullseye_amd64.deb ./docker-ce_24.0.6-1\~debian.11\~bullseye_amd64.deb ./docker-buildx-plugin_0.11.2-1\~debian.11\~bullseye_amd64.deb ./docker-compose-plugin_2.6.0\~debian-bullseye_amd64.deb

echo -ne "[*] Instalando docker-compose..."
wget https://github.com/docker/compose/releases/download/v2.6.0/docker-compose-linux-x86_64
chmod +x docker-compose-linux-x86_64
sudo mv docker-compose-linux-x86_64 /usr/local/bin/docker-compose

echo -ne "[*] Configurando docker..."
sudo service docker start # o sudo systemctl enable docker && sudo systemctl start docker
sudo usermod -aG docker $USER # añadir usuario al grupo docker

echo -n "[*] Comprobando instalación..."
sudo docker run hello-world
sudo docker-compose --version

echo -ne "[*] Instalación finalizada"