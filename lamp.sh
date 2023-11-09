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


#Installing PHP 7.4 with Apache
apt update
apt install php libapache2-mod-php
apt install openssl php-common php-bcmath php-curl php-json php-mbstring php-mysql php-tokenizer php-xml php-zip php-mbstring php-dom php-cli php-gd php-xml php-json php-mcrypt
