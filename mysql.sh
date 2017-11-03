#!/bin/bash

apt-get install -y mysql-server

mkdir -p -m 775 /data/mysql /data/tmp

chown -r mysql:mysql /data/mysql
cp -rp /var/lib/mysql /data/mysql

sed -ri 's/^datadir.*/datadir=\/data\/mysql/' /etc/mysql/mysql.conf.d/mysqld.cnf

sed -ri 's/^log_error.*/datadir=\/data\/log\/mysql_error.log/' /etc/mysql/mysql.conf.d/mysqld.cnf

service mysql restart