# Update repo terlebih dahulu
apt update
clear

# Install paket yg dibutuhkan
apt install curl wget build-essential -y
clear

# Export path hugo
export PATH=$PATH:/usr/local/go/bin

# Install hugo
CGO_ENABLED=1 go install -tags extended,withdeploy github.com/gohugoio/hugo@latest
clear

# Pindahkan binary hugo
mv ~/go/bin/hugo /usr/local/bin
clear

# Menampilkan versi hugo yang terinstall
hugo version
sleep 5
clear

# Menghapus sisa file
rm -rf ~/go