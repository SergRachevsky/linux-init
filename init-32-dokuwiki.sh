#!/bin/bash


echo "======================================="
echo "== Setup Dokuwiki"
echo "======================================="


TODAY=`date '+%F'`


sudo apt install -y php php-gd php-xml php-json

wget https://download.dokuwiki.org/src/dokuwiki/dokuwiki-stable.tgz -O /var/tmp/dokuwiki-stable.tgz
mkdir /var/www/html/dokuwiki.${TODAY}

tar xzf /var/tmp/dokuwiki-stable.tgz -C /var/www/html/dokuwiki.${TODAY}/ --strip-components=1
rm /var/tmp/dokuwiki-stable.tgz

cp /var/www/html/dokuwiki.${TODAY}/.htaccess{.dist,}

chown -R www-data:www-data /var/www/html/dokuwiki.${TODAY}

#
# rename /var/www/html/dokuwiki.${TODAY} to /var/www/html/dokuwiki
#
echo "rename /var/www/html/dokuwiki.${TODAY} to /var/www/html/dokuwiki"
echo "press any key to continue.."
read -n 1

cp ./files/etc/apache2/sites-available/dokiwiki.conf /etc/apache2/sites-available/

a2ensite dokuwiki.conf

systemctl reload apache2
