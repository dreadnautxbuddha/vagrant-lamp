# !/usr/bin/env bash
echo "/*"
echo "|---------------------------------------------"
echo "| [Installing] PHP 7.3 and other components"
echo "|---------------------------------------------"
echo "*/"
add-apt-repository -y ppa:ondrej/php
apt-get update -y
apt install -y php7.3 php7.3-cli php7.3-common
apt install -y php-pear php7.3-curl php7.3-dev php7.3-gd php7.3-mbstring php7.3-zip php7.3-mysql php7.3-xml php7.3-fpm libapache2-mod-php7.3 php7.3-imagick php7.3-recode php7.3-tidy php7.3-xmlrpc php7.3-intl php7.3-bcmath

