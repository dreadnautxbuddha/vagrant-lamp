# !/usr/bin/env bash
# We're installing Elasticsearch 1.7.5 specifically for SugarCRM 7.x
echo "/*"
echo "|---------------------------------------------"
echo "| [Installing] Elasticsearch 1.7.5 and its dependencies"
echo "|---------------------------------------------"
echo "*/"
sudo apt-get install -y openjdk-8-jre
cd ~/Installers
curl -sL -O https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.7.5.deb
sudo dpkg -i elasticsearch-1.7.5.deb
sudo apt-get install -yf # Install additional dependencies needed by elastic search
sudo systemctl enable elasticsearch.service
