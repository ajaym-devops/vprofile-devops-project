#!/bin/bash

echo "Updating system..."
sudo dnf update -y

echo "Installing MariaDB..."
sudo dnf install epel-release -y
sudo dnf install git mariadb-server -y

sudo systemctl start mariadb
sudo systemctl enable mariadb

sudo systemctl start firewalld
sudo systemctl enable firewalld

sudo firewall-cmd --add-port=3306/tcp --permanent
sudo firewall-cmd --reload

echo "MySQL setup completed"
