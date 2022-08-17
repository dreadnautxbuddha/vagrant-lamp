echo "/*"
echo "|---------------------------------------------"
echo "| Applying wildcards conf..."
echo "|---------------------------------------------"
echo "*/"
cd /etc/apache2/sites-available
a2ensite /wildcards.conf
a2dissite 000-default.conf
service apache2 restart
cd ~
echo "Done!"

