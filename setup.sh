#!/bin/bash

# Print pesan welcome
echo "=================="
echo "Hugo Sites Manager"
echo "=================="
echo ""
echo "Welcome to easier hugo sites management. Worry less, and focus on your writings."

# Confirmation message to continue
read -p "Press 'enter' to continue..."

# clear
clear

# update dulu
apt update

# install wget dan curl
apt install wget curl -y

# wget script install Golang
wget https://raw.githubusercontent.com/rohmatsb/hugo-sites-manager/refs/heads/main/installer/install-golang.sh
chmod 777 install-golang.sh
./install-golang.sh
rm -rf ./install-golang.sh