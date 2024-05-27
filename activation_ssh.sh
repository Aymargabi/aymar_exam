#!/bin/bash

# Vérification des privilèges d'administrateur
if [ "$(id -u)" -ne 0 ]; then
  echo "Ce script doit être exécuté en tant qu'administrateur (root)" 1>&2
  exit 1
fi

# Vérification de l'état du service SSH
if systemctl is-active --quiet ssh; then
  echo "Le service SSH est déjà actif."
else
  # Démarrage du service SSH
  systemctl start ssh

  # Activer le démarrage automatique du service SSH au démarrage du système
  systemctl enable ssh

  echo "Le service SSH a été activé avec succès."
fi
