# !/usr/bin/env bash
echo "/*"
echo "|---------------------------------------------"
echo "| [Installing] PHP 7.4 and other components"
echo "|---------------------------------------------"
echo "*/"
apt-get update -y
add-apt-repository -y ppa:jczaplicki/xenial-php74-temp
add-apt-repository -y ppa:tomvlk/php-archive
apt-get update -y
apt install -y php7.4 php7.4-cli php7.4-common
apt install -y php-pear php7.4-curl php7.4-dev php7.4-gd php7.4-mbstring php7.4-zip php7.4-mysql php7.4-xml php7.4-fpm libapache2-mod-php7.4 php7.4-imagick php7.4-tidy php7.4-xmlrpc php7.4-intl php7.4-bcmath

