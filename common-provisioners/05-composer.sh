# !/usr/bin/env bash
echo "/*"
echo "|---------------------------------------------"
echo "| [Installing] Composer"
echo "|---------------------------------------------"
echo "*/"
curl -sS https://getcomposer.org/installer -o composer-setup.php
php composer-setup.php --install-dir=/usr/local/bin --filename=composer
