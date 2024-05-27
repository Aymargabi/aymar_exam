#!/bin/bash

if [ $(whoami) != "root" ]; then
	echo "Ce script doit etre executer avec les privileges root. Veillez utiliser sudo."
	exit 1
fi

#apt-get update

#installer les dependances requises
apt-get install software-properties-common

add-apt-repository ppa:ansible/ansible

#apt-get update
apt-get install -y ansible

ansible --version

echo "Ansible a ete installe et configure avec succes"
