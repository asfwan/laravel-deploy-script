#!/bin/bash

# update the software repo
sudo apt-get update

# add ppa for php
sudo apt -y install software-properties-common
sudo add-apt-repository ppa:ondrej/php

# install php, plugins for php (gd, mbstring, xml, mysql, curl, zip)
sudo apt-get install -y php php-gd php-mbstring php-xml php-mysql php-curl php-zip

# install composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '756890a4488ce9024fc62c56153228907f1545c228516cbf63f885e036d37e9a59d27d63f46af1d4d07ee0f76181c7d3') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
sudo php composer-setup.php --install-dir=/usr/bin --filename=composer
php -r "unlink('composer-setup.php');"

# enable rewrite for apache
sudo a2enmod rewrite

# install certbot
sudo snap install core; sudo snap refresh core
sudo snap install --classic certbot
sudo ln -s /snap/bin/certbot /usr/bin/certbot
