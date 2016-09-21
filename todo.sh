#!/bin/bash

echo "Atualizando repositórios"
sudo apt-get update

echo "Instalando Virtual Box"
sudo apt-get -y install virtualbox 

echo "Instalando Vagrant"
sudo apt-get -y install vagrant

echo "Instalando dkms"
sudo apt-get -y install virtualbox-dkms


echo "Instalando Ansible"
sudo apt-get -y install software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get -y install ansible

echo "Baixando um box pre-configurado hashicorp/precise32"
sudo vagrant box add hashicorp/precise32

echo "Executando o Vagrant e criando os servidores"
sudo vagrant up

