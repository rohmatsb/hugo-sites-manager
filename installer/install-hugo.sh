#!/bin/bash

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

# Cek versi hugo terinstall
hugo version