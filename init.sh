#!/bin/bash

sudo apt-get update

sudo apt -y install software-properties-common
sudo add-apt-repository ppa:ondrej/php

sudo apt-get install -y php php-gd php-mbstring php-xml php-mysql php-curl php-zip

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '756890a4488ce9024fc62c56153228907f1545c228516cbf63f885e036d37e9a59d27d63f46af1d4d07ee0f76181c7d3') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php --install-dir=bin --filename=composer
php -r "unlink('composer-setup.php');"
