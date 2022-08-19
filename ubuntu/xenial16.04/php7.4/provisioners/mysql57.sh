# !/usr/bin/env bash
echo "/*"
echo "|---------------------------------------------"
echo "| [Installing] MySQL 5.7 Server"
echo "|---------------------------------------------"
echo "*/"
DATABASE_PASS="Password01"
debconf-set-selections <<< "mysql-server mysql-server/root_password password $DATABASE_PASS"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $DATABASE_PASS"
apt-get -y install mysql-server
mysql -u root -p"$DATABASE_PASS" -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '$DATABASE_PASS'"
sed -i "s/.*bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/mysql.conf.d/mysqld.cnf
service mysql restart
