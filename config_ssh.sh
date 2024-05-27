#!/bin/bash

echo "Ce script doit être exécuté en tant qu'administrateur (root)" 

# Installation du serveur SSH
sudo apt update
sudo apt install -y openssh-server

# Démarrage du service SSH
systemctl start ssh

# Optionnel : Activer le démarrage automatique du service SSH au démarrage du système
systemctl enable ssh

echo "Le serveur SSH a été installé et démarré avec succès."
