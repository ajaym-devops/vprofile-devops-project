#!/bin/bash

echo "Updating system..."
sudo apt update
sudo apt upgrade -y

echo "Installing Nginx..."
sudo apt install nginx -y

echo "Starting Nginx..."
sudo systemctl start nginx
sudo systemctl enable nginx

echo "Nginx installation completed"
