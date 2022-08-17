# !/usr/bin/env bash
mkdir -p ~/Installers

echo "/*"
echo "|---------------------------------------------"
echo "| Updating your repositories..."
echo "|---------------------------------------------"
echo "*/"
# The next few lines will disable ipv6 so we don't encounter networking issues
# introduced by it while provisioning.
echo 'net.ipv6.conf.all.disable_ipv6 = 1' >> /etc/sysctl.conf
echo 'net.ipv6.conf.default.disable_ipv6 = 1' >> /etc/sysctl.conf
echo 'net.ipv6.conf.lo.disable_ipv6 = 1' >> /etc/sysctl.conf
sysctl -p
apt-get update

echo "/*"
echo "|---------------------------------------------"
echo "| [Installing] Miscellaneous tools"
echo "|---------------------------------------------"
echo "*/"
apt-get install -y curl unzip zip
