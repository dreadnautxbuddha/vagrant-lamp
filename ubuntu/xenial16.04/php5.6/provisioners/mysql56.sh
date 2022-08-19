# !/usr/bin/env bash
echo "/*"
echo "|---------------------------------------------"
echo "| [Installing] MySQL Server"
echo "|---------------------------------------------"
echo "*/"
DATABASE_PASS="Password01"
sudo debconf-set-selections <<< "mysql-server-5.6 mysql-server/root_password password $DATABASE_PASS"
sudo debconf-set-selections <<< "mysql-server-5.6 mysql-server/root_password_again password $DATABASE_PASS"
sudo apt-get -y install mysql-server
mysql -u root -p"$DATABASE_PASS" -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '$DATABASE_PASS'"
sudo sed -i "s/.*bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/mysql.conf.d/mysqld.cnf
sudo service mysql restart
