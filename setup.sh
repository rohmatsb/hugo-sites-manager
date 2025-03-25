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

# Define function untuk memilih arsitektur 
function enter_arsitektur {
echo "Masukkan arsitektur perangkat"
echo "(Contoh : 'amd64' atau 'arm64')"
echo ""
read -p "Tipe arsitektur : " arsitektur
}

# Panggil fungsi arsitektur
enter_arsitektur

# else if format masukkan
if [ arsitektur == "arm64"]
    then
    echo "adalah arm"
elif [ arsitektur == "amd64" ]
    then
    echo "adalah amd"
else
    echo "entah"
fi