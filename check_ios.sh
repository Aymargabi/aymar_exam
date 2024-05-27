#!bin/bash

EQUIPEMENT_IP="192.168.1.137"
USER="cisco"
PASSWORD="cisco123!"
MIN_VERSION="16.09.03"

CONFIG=$( ssh "$EQUIPEMENT_IP" -l "$USER" )

VERSION=$(echo $CONFIG | grep -oP 'Version (\d+\.\d+\.\d+)')

if [[ -n "$VERSION" ]]; then
	if [[ "$VERSION" < "$MIN_VERSION" ]]; then
		echo "Il fanut fair un updat a $MIN_VERSION."
	else
		echo "ok"
	fi
else
	echo "impossible"
fi
