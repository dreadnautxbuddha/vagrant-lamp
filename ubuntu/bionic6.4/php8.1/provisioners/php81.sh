# !/usr/bin/env bash
echo "/*"
echo "|---------------------------------------------"
echo "| [Installing] PHP 8.1 and other components"
echo "|---------------------------------------------"
echo "*/"
apt-get -y update
apt-get -y install software-properties-common
LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php
apt-get -y update
apt-get -y install php8.1
apt-get -y install libapache2-mod-php8.1 php8.1-fpm libapache2-mod-fcgid php8.1-curl php8.1-dev php8.1-gd php8.1-mbstring php8.1-zip php8.1-mysql php8.1-xml
