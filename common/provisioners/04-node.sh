# !/usr/bin/env bash
mkdir -p ~/Installers

echo "/*"
echo "|---------------------------------------------"
echo "| [Installing] Node Version Manager (Defaulting Node to v10.9.0)"
echo "|---------------------------------------------"
echo "*/"
cd ~/Installers
apt-get install -y build-essential libssl-dev
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh -o install_nvm.sh
bash install_nvm.sh
source ~/.nvm/nvm.sh
nvm install 10.9.0
nvm alias default v10.9.0

echo "/*"
echo "|---------------------------------------------"
echo "| [Installing] Node Packages"
echo "|---------------------------------------------"
echo "*/"
npm install -g @ionic/cli
