# !/usr/bin/env bash
echo "/*"
echo "|---------------------------------------------"
echo "| Copying resource files..."
echo "|---------------------------------------------"
echo "*/"
# Using Vagrant's shell provisioner to copy files to protected directories on the
# guest machine will not work because it doesn't work with elevated privileges.
# As a workaround, we're going to use the file provisioner to copy the said files to
# a non-elevated directory, then use the inline shell script to move them to the
# appropriate directory
cp /mnt/resources/php/php.ini /etc/php/5.6/apache2/php.ini
cp /mnt/resources/apache2/wildcards.conf /etc/apache2/sites-available/wildcards.conf
cp /mnt/resources/mysql56/my.cnf /etc/mysql/my.cnf
echo "Done!"
