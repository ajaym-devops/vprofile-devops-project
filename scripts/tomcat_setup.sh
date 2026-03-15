#!/bin/bash

echo "Updating system..."
sudo dnf update -y

echo "Installing Java..."
sudo dnf install epel-release -y
sudo dnf install java-17-openjdk java-17-openjdk-devel -y

echo "Installing dependencies..."
sudo dnf install git wget -y

cd /tmp

echo "Downloading Tomcat..."
wget https://archive.apache.org/dist/tomcat/tomcat-10/v10.1.26/bin/apache-tomcat-10.1.26.tar.gz

echo "Extracting Tomcat..."
tar xzvf apache-tomcat-10.1.26.tar.gz

echo "Creating Tomcat user..."
sudo useradd --home-dir /usr/local/tomcat --shell /sbin/nologin tomcat

echo "Creating Tomcat directory..."
sudo mkdir /usr/local/tomcat

echo "Copying files..."
sudo cp -r apache-tomcat-10.1.26/* /usr/local/tomcat/

echo "Setting permissions..."
sudo chown -R tomcat:tomcat /usr/local/tomcat

echo "Tomcat installation completed"
