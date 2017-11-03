#!/bin/bash

# update packages ubuntu
apt-get update
apt-get install -y language-pack-en
export LANG=en_US.UTF-8
locale -a

# Install other sources for apps
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4F4EA0AAE5267A6C

# install base apps
apt-get install -y python-software-properties software-properties-common
