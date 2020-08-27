# !/usr/bin/env bash
echo "/*"
echo "|---------------------------------------------"
echo "| [Installing] Apache2"
echo "| Note: Make sure to add your private IP at the end of /etc/apache2/apache2.conf: ServerName 19.19.19.20"
echo "|---------------------------------------------"
echo "*/"
apt-get install -y apache2
a2enmod vhost_alias
a2enmod rewrite
a2enmod headers
a2enmod expires
service apache2 restart
