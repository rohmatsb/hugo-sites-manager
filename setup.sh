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

# if-else
if [ "$arsitektur" == "arm64" ]; then
install_golang = "https://raw.githubusercontent.com/rohmatsb/hugo-sites-manager/refs/heads/main/installer/install-golang-arm64.sh"
break
elif [ "arsitektur" == "amd64" ]; then
install_golang = "https://raw.githubusercontent.com/rohmatsb/hugo-sites-manager/refs/heads/main/installer/install-golang-amd64.sh"
break
else
echo "Format salah, silahkan masukkan ulang!"
clear
fi

echo install_golang