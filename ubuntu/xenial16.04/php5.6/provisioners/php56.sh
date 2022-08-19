# !/usr/bin/env bash
echo "/*"
echo "|---------------------------------------------"
echo "| [Installing] PHP 5.6 and other components"
echo "|---------------------------------------------"
echo "*/"
apt-get purge `dpkg -l | grep php| awk '{print $2}' |tr "\n" " "`
add-apt-repository ppa:ondrej/php -y
apt-get install -y software-properties-common
apt-get update
apt-get install -y php5.6
apt-get install -y php5.6-mbstring php5.6-cli php5.6-mcrypt php5.6-mysql php5.6-xml php5.6-curl php5.6-bcmath

