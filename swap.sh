#!/bin/bash

$swap_file=/data/.swapfile

if [ ! -f $swap_file ]; then
	dd if=/dev/zero of=$swap_file bs=1024 count=1048576
fi

if [ -f $swap_file ]; then
	chown root:root $swap_file
	chmod 0600 $swap_file
	mkswap $swap_file
	swapon $swap_file
fi