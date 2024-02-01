#!/bin/bash
sudo apt update -y
sudo apt install -y apache2
sudo systemctl enable apache2
sudo systemctl start apache2
sudo apt-get update
sudo apt-get install ufw
ufw allow 80
ufw --force enable
