# !/usr/bin/env bash
echo "/*"
echo "|---------------------------------------------"
echo "| [Installing] PHP 5.6 and other components"
echo "|---------------------------------------------"
echo "*/"
apt-get install -y python-software-properties
add-apt-repository -y ppa:ondrej/php
apt-get update -y
apt-get install -y php7.1 php7.1-mbstring php7.1-cli php7.1-mcrypt php7.1-mysql php7.1-xml php7.1-curl php7.1-bcmath php7.1-gmp php7.1-ldap php7.1-zip

