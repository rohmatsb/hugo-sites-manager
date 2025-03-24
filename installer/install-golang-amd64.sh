# Update repo terlebih dahulu
apt update

# Install wget dan curl terlebih dahulu
apt install wget curl -y

# Download golang
wget https://go.dev/dl/go1.24.1.linux-amd64.tar.gz

# Hapus instalasi golang sebelumnya & ekstrak golang
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.24.1.linux-amd64.tar.gz

# Export path
export PATH=$PATH:/usr/local/go/bin

# Make export path permanent
# echo 'export PATH=$PATH:/usr/local/go/bin' >> /etc/profile
echo 'export PATH=$PATH:/usr/local/go/bin' >> $HOME/.profile

# Hapus file tidak terpakai
rm -rf go1.24.1.linux-amd64.tar.gz

# Bersihkan layar dan menampilkan versi go yang terinstall
clear
go version

