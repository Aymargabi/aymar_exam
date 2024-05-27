#!/bin/bash/

#sudo apt-get update
sudo apt-get install openssh-server

sudo systemctl enable ssh
sudo systemctl start ssh

echo "[webservers]" | sudo tee -a /home/lfionona/ansible/hosts
echo "gsi_machine ansidle_host=192.138.1.137" | sudo tee -a /home/lfionona/ansible/hosts

