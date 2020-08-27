# !/usr/bin/env bash
mkdir -p ~/Installers

echo "/*"
echo "|---------------------------------------------"
echo "| Updating your repositories..."
echo "|---------------------------------------------"
echo "*/"
apt-get update

echo "/*"
echo "|---------------------------------------------"
echo "| [Installing] Miscellaneous tools"
echo "|---------------------------------------------"
echo "*/"
apt-get install -y curl unzip zip
