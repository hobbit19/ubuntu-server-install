#!/bin/bash

apt-get install -y ssh-server
mkdir /var/run/sshd
echo 'root:root' |chpasswd
sed -ri 's/^PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
#sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config