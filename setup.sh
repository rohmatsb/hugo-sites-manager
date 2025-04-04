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
wget 