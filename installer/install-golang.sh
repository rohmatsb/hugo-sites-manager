# Define color
RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
BLUE='\e[34m'
MAGENTA='\e[35m'
CYAN='\e[36m'
RESET='\e[0m'

# Define Variable
versi_go=1.24.1

# Update repo terlebih dahulu
apt update

# Install wget dan curl terlebih dahulu
apt install wget curl -y

# bersihkan layar
clear

# Validasi arsitektur 
while true; do
echo "Masukkan arsitektur perangkat"
echo "(Contoh : 'amd64' atau 'arm64')"
echo ""
read -p "Tipe arsitektur : " arsitektur

if [ "$arsitektur" == "amd64" ]; then
    arch="amd64"
    break
elif [ "$arsitektur" == "arm64" ]; then
    arch="arm64"
    break
else
    echo ""
    echo "${RED}Format salah! Atau arsitektur tidak didukung? Silahkan masukkan ulang...${RESET}"
    sleep 3
    clear
fi
done

# Download golang
wget https://go.dev/dl/go$versi_go.linux-$arch.tar.gz

# Hapus instalasi golang sebelumnya & ekstrak golang
rm -rf /usr/local/go && tar -C /usr/local -xzf go$versi_go.linux-$arch.tar.gz

# Export path
export PATH=$PATH:/usr/local/go/bin

# Make export path permanent
# echo 'export PATH=$PATH:/usr/local/go/bin' >> /etc/profile
echo 'export PATH=$PATH:/usr/local/go/bin' >> $HOME/.profile

# Hapus file tidak terpakai
rm -rf go$versi_go.linux-$arch.tar.gz

# Bersihkan layar dan menampilkan versi go yang terinstall
clear
go version