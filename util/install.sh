wget https://install.zerotier.com/ -O install.sh
chmod +x install.sh
sed -i '2iset -x' install.sh
sudo bash install.sh