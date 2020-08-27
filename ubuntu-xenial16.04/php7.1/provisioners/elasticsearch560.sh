# !/usr/bin/env bash
# We're installing Elasticsearch 5.6.0 specifically for SugarCRM 8.x
echo "/*"
echo "|---------------------------------------------"
echo "| [Installing] Elasticsearch 5.6.0 and its dependencies"
echo "|---------------------------------------------"
echo "*/"
sudo apt-get install -y openjdk-8-jre
cd ~/Installers
curl -sL -O https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.0.deb
sudo dpkg -i elasticsearch-5.6.0.deb
sudo apt-get install -yf # Install additional dependencies needed by elastic search
sudo systemctl enable elasticsearch.service
