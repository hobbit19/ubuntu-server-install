#!/bin/bash

# Install PHP
LC_ALL=en_US.UTF-8 add-apt-repository -y ppa:ondrej/php
apt-get update
apt-get install -y php7.2 libapache2-mod-php7.2 php7.2-fpm php7.2-mysql php7.2-xml php7.2-curl php7.2-mbstring php7.2-cli php7.2-common php7.2-gd php7.2-imap php7.2-intl php7.2-json php7.2-pspell php7.2-readline php7.2-zip php7.2-bz2
apt-get install -y php5.6 libapache2-mod-php5.6 php5.6-fpm php5.6-mysql php5.6-xml php5.6-curl php5.6-mbstring php5.6-cli php5.6-common php5.6-gd php5.6-imap php5.6-intl php5.6-json php5.6-pspell php5.6-readline php5.6-zip php5.6-bz2

# Configure
phpenmod -v ALL -s ALL json opcache gd pdo zip intl pdo_mysql
