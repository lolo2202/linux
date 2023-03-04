#!/bin/bash

sudo sed -i 's/ClientAliveInterval 300/ClientAliveInterval 0/' /etc/ssh/sshd_config
sudo sed -i 's/LoginGraceTime 60/LoginGraceTime 0/' /etc/ssh/sshd_config
sudo service sshd restart

cp .inputrc ~
cp .bash_aliases ~
cp .bashrc ~

tar -xzvf vim_small.tgz -C ~

sudo mkdir /ap/users
sudo chmod 777 /ap/users
sudo mkdir /ap/users/eltonz
sudo chown eltonz:eltonz /ap/users/eltonz

mkdir /ap/users/eltonz/tools
unzip ngccli_linux.zip -d /ap/users/eltonz/tools

bash install_pwsh.sh
bash install_conda.sh
sudo chown -R eltonz:eltonz ~/.conda

git config --global user.email "eltonz@microsoft.com"
git config --global user.name "Elton Zheng"
