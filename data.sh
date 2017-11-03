#!/bin/bash

mkdir -p -m 776 /data/www
chown www-data:www-data /data/www

if [ $(fdisk -l | grep -c "/dev/sdb") != 0 ]; then

	if [ $(fdisk -l | grep -c "/dev/sdb1") = 0 ]; then
		new_part_cmd="n\np\n1\n\n\nw\n"
		echo $new_part_cmd | fdisk /dev/sdb
		mkfs.ext3 /dev/sdb1
	fi

	mount /dev/sdb1 /data
	if mount|grep /dev/sdb1; then
		mkdir -p -m 776 /data/www
		mkdir -p -m 776 /data/log
		mkdir -p -m 776 /data/tmp
		chown www-data:www-data /data/www
	fi
fi