#!/bin/bash

playbook_name="apache_install.yml"

serveur_web="gsi_machine"

ansible-playbook -i inventaire.in $playbook_name

echo "Verification de l'etat du service Apache..."
for servue in $serveurs_web; do
	ssh $serveur "systemctl status apache2"
done

echo "Verification du port d'ecoute d'apache..."
for serveur in $serveur_web; do
	ssh $serveur "netstat -tnlp | grep ':8081'"
done
