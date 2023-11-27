#!/bin/bash
sudo su
apt update
#Installing Apache2
apt install apache2
service apache2 start

#Installing MySQL 8.0
apt update
apt install mysql-server
service mysql start

#Installing PHP with Apache
apt update
apt install php libapache2-mod-php
apt install openssl php-common php-bcmath php-curl php-json php-mbstring php-mysql php-tokenizer php-xml php-zip php-mbstring php-dom php-cli php-gd php-xml php-json php-mcrypt

#add virtual host
echo """
<VirtualHost *:80>
    ServerAdmin admin@example.com
    ServerName site.example.com
    DocumentRoot /var/www/site.example.com/public

    <Directory /var/www/site.example.com>
        Options Indexes MultiViews FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>

    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
""" > /etc/apache2/sites-available/site.example.com.conf
#restart apache2
service apache2 reload
