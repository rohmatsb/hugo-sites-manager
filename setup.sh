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

# Masukkan pilihan arsitektur, jika salah loop memakai while true; do
while true; do
echo "Masukkan arsitektur perangkat"
echo "(Contoh : 'amd64' atau 'arm64')"
echo ""
read -p "Tipe arsitektur : " arsitektur