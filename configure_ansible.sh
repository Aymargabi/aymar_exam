#!/bin/bash

# Fonction pour installer le serveur SSH
install_ssh_server() {
    echo "Installation du serveur SSH..."
    sudo apt update
    sudo apt install openssh-server -y
}

# Fonction pour activer le serveur SSH
activate_ssh_server() {
    echo "Activation du serveur SSH..."
    sudo systemctl start ssh
    sudo systemctl enable ssh
}

# Fonction pour configurer le fichier hosts pour le serveur esclave
configure_hosts_file() {
    echo "Configuration du fichier hosts pour le serveur esclave..."
    echo "gsi_machine ansible_host=<adresse_IP_gsi_machine>" | sudo tee -a /etc/ansible/hosts
}

# Fonction pour vérifier la configuration d'Ansible
verify_ansible_configuration() {
    echo "Vérification de la configuration d'Ansible..."
    ansible --version
    ansible --version | grep "python version"
}

# Installer le serveur SSH
install_ssh_server

# Activer le serveur SSH
activate_ssh_server

# Configurer le fichier hosts pour le serveur esclave
configure_hosts_file

# Vérifier la configuration d'Ansible
verify_ansible_configuration

echo "Configuration terminée."
