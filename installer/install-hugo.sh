#!/bin/bash

# bersihkan layar
clear

# Update repo dulu
apt update

# Install paket yang dibutuhkan 
apt install git build-essential -y

# Export go ulang, agar tidak perlu restart session
export PATH=$PATH:/usr/local/go/bin

# Build dan install hugo standard dari source
go install github.com/gohugoio/hugo@latest

# clear
clear

# Pindahkan hugo ke /usr/bin
cd #kembali ke home folder
cd go/bin
mv hugo /usr/bin

# cek versi hugo
hugo version
sleep 3
clear