#!/bin/bash

apt-get install -y vsftpd

mkdir -p /data/www

cat <<EOT > /etc/vsftpd.conf
listen_ipv6=YES
anonymous_enable=NO
local_enable=YES
write_enable=YES
use_localtime=YES
chroot_local_user=NO
force_dot_files=YES
secure_chroot_dir=/var/run/vsftpd/empty
local_root=/data/www
EOT

service vsftpd restart