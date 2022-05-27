#!/bin/bash


echo "======================================="
echo "== Setup Zabbix"
echo "======================================="

# Install Zabbix repository
sudo wget https://repo.zabbix.com/zabbix/5.4/ubuntu/pool/main/z/zabbix-release/zabbix-release_5.4-1+ubuntu20.04_all.deb
sudo dpkg -i zabbix-release_5.4-1+ubuntu20.04_all.deb
sudo apt update
sudo rm zabbix-release_5.4-1+ubuntu20.04_all.deb

sudo su -c "echo 'deb [arch=amd64] http://ftp.de.debian.org/debian stretch main' >> /etc/apt/sources.list"

# Install Zabbix server, frontend, agent
sudo apt install -y zabbix-server-pgsql zabbix-frontend-php php7.4-pgsql zabbix-apache-conf zabbix-sql-scripts zabbix-agent

# Create initial database
sudo -u postgres createuser --pwprompt zabbix
sudo -u postgres createdb -O zabbix zabbix

echo ""
echo "Edit file /etc/zabbix/zabbix_server.conf"
echo "Set # DBPassword=password"
echo "press any key to continue.."
read -n 1



sudo zcat /usr/share/doc/zabbix-sql-scripts/postgresql/create.sql.gz | sudo -u zabbix psql zabbix

sudo systemctl restart zabbix-server zabbix-agent apache2
sudo systemctl enable zabbix-server zabbix-agent apache2

