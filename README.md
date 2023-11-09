# talex-lamp
```bash
sudo su
apt update
```
# Installing Apache2
```bash
apt install apache2
service apache2 start
```
# allow the firewall permissions
(if you have firewall activated)
```bash
ufw allow in "Apache Full"
ufw allow 80/tcp
ufw allow 443/tcp
ufw reload
```
# Installing MySQL 8.0
```bash
apt update
apt install mysql-server
service mysql start
```
# change root password
```bash
sudo mysql
mysql> ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
#or 
sudo mysql_secure_installation
```
# find the ip
```bash
hostname -I
```
# Installing PHP 7.4 with Apache
```bash
apt update
apt install php libapache2-mod-php
apt install openssl php-common php-bcmath php-curl php-json php-mbstring php-mysql php-tokenizer php-xml php-zip php-mbstring php-dom php-cli php-gd php-xml php-json php-mcrypt
```
# Installing phpMyAdmin
```bash
apt update
apt install phpmyadmin
phpenmod mbstring
service apache2 restart
# to the /etc/apache2/apache2.conf file and restarting the service.
#Include /etc/phpmyadmin/apache.conf
```
