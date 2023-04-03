#!/bin/bash

# fix the auto-disconnect after idle 1 minute
sudo sed -i 's/ClientAliveInterval 300/ClientAliveInterval 0/' /etc/ssh/sshd_config
sudo sed -i 's/LoginGraceTime 60/LoginGraceTime 0/' /etc/ssh/sshd_config
sudo service sshd restart

# configs
cp .inputrc ~
cp .bash_aliases ~
cp .bashrc ~
cp .bash_profile ~

# vi plugins
tar -xzvf vim_small.tgz -C ~

# prepare working folders
sudo mkdir /ap/users
sudo chmod 777 /ap/users
sudo mkdir /ap/users/eltonz
sudo chown eltonz:eltonz /ap/users/eltonz

mkdir /ap/users/eltonz/tools
unzip ngccli_linux.zip -d /ap/users/eltonz/tools

# install power shell, for cosmos download/upload
bash install_pwsh.sh

# install mini-conda
bash install_conda.sh
sudo chown -R eltonz:eltonz ~/.conda

# install cuda-11.6
# **** Don't install driver ****
wget https://developer.download.nvidia.com/compute/cuda/11.6.2/local_installers/cuda_11.6.2_510.47.03_linux.run
sudo sh cuda_11.6.2_510.47.03_linux.run
sudo chmod -R 755 /usr/local/cuda/

# update git configs
git config --global user.email "eltonz@microsoft.com"
git config --global user.name "Elton Zheng"

# add to docker group
sudo usermod -aG docker eltonz
