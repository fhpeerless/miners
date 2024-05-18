#!/bin/bash
sudo apt update
sudo wget --no-check-certificate -O /qubic/123.tar.gz https://dl.qubic.li/downloads/qli-Client-1.9.7-Linux-x64.tar.gz
sudo apt-get upgrade -y

sudo chmod -R 777 /qubic
tar -zxvf /qubic/123.tar.gz

sudo wget --no-check-certificate -O /qubic/appsettings.json https://raw.githubusercontent.com/fhpeerless/miners/main/appsettings.json
sudo /qubic/qli-Client
sudo systemctl status qli

# sudo mkdir -p /aanode && sudo wget -N --no-check-certificate -O /aanode/install_apphub.sh https://raw.githubusercontent.com/fhpeerless/msn/main/install_apphub.sh && sudo chmod -R 777 /aanode && sudo bash /aanode/install_apphub.sh
