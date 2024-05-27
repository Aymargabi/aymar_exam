#!/bin/bash

INVENTORY_FILE="/chemin/vers/webserver.ini"

if [ ! -f "$INVENTORY_FILE" ]; then
	echo "Le fichier d'inventaire $INVENTORY_FILE n'existe pas."
	exit 1
fi

ansible webservers -i
"$INVENTORY_FILE" -m
ansible.builtin.ping
