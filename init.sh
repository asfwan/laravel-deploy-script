#!/bin/bash

sudo apt-get update

sudo apt -y install software-properties-common
sudo add-apt-repository ppa:ondrej/php

sudo apt-get install -y php php-gd php-mbstring php-xml php-mysql php-curl
sudo apt-get install -y composer
