#!/bin/bash


echo "======================================="
echo "== Setup PostgreSQL"
echo "======================================="

sudo apt install -y postgresql postgresql-contrib

# sudo -i -u postgres
# sudo -u postgres psql


# to add new postgresql superuser
# sudo -i -u postgres
# createuser --interactive --pwprompt
# dba / 


sudo -u postgres createuser --interactive --pwprompt
# dba /
sudo -u postgres createdb dba


sudo adduser dba


#
#
# set listen_addresses = '*' in /etc/postgresql/postgresql.conf
#
# add next line to /etc/postgresql/pg_hba.conf:
# host    all             all              0.0.0.0/0                       md5

sudo systemctl restart postgresql


echo "======================================="
echo "== Setup pgadmin4"
echo "======================================="

sudo curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add -
sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'

sudo apt update
sudo apt install -y pgadmin4-web

# Configure the webserver
sudo /usr/pgadmin4/bin/setup-web.sh

