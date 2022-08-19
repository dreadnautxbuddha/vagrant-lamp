# !/usr/bin/env bash
# We're installing Elasticsearch 5.6.0 specifically for SugarCRM 8.x
echo "/*"
echo "|---------------------------------------------"
echo "| [Installing] Elasticsearch 6.8 and its dependencies"
echo "|---------------------------------------------"
echo "*/"
apt-get install -y openjdk-8-jre
cd ~/Installers
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.8.12.deb
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.8.12.deb.sha512
shasum -a 512 -c elasticsearch-6.8.12.deb.sha512
dpkg -i elasticsearch-6.8.12.deb
systemctl enable elasticsearch.service
service elasticsearch start
