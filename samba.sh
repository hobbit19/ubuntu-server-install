#!/bin/bash

apt-get install -y vsftpd samba

mkdir -p /data/www

cat <<EOT > /etc/samba/smb.conf
[global]
	workgroup = WORKGROUP
	security = user
[www]
	comment = WWW
	path = /data/www
	browsable = yes
	writable = yes
	read only = no
	guest ok = no
	create mask = 0775
	force create mode = 0775
	directory mask = 0775
	force group = www-data
EOT

service smbd restart