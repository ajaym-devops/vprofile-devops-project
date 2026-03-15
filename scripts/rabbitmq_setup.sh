#!/bin/bash

echo "Updating system..."
sudo dnf update -y

echo "Installing EPEL repository..."
sudo dnf install epel-release -y

echo "Installing dependencies..."
sudo dnf install wget -y

echo "Installing RabbitMQ repository..."
sudo dnf -y install centos-release-rabbitmq-38

echo "Installing RabbitMQ server..."
sudo dnf --enablerepo=centos-rabbitmq-38 -y install rabbitmq-server

echo "Starting RabbitMQ service..."
sudo systemctl enable --now rabbitmq-server

echo "Creating RabbitMQ user..."
sudo rabbitmqctl add_user test test
sudo rabbitmqctl set_user_tags test administrator
sudo rabbitmqctl set_permissions -p / test ".*" ".*" ".*"

echo "Opening firewall port 5672..."
sudo firewall-cmd --add-port=5672/tcp
sudo firewall-cmd --runtime-to-permanent

echo "Restarting RabbitMQ..."
sudo systemctl restart rabbitmq-server

echo "RabbitMQ setup completed"
