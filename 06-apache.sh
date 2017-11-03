#!/bin/bash

# Install
apt-get install -y apache2

# Configure
a2enmod alias headers expires rewrite ssl
