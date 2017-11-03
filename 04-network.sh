#!/bin/bash

cat <<EOF > /etc/network/interfaces
# This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).

source /etc/network/interfaces.d/*

# The loopback network interface
auto lo
iface lo inet loopback

# Host only
auto enp0s3
iface enp0s3 inet static
   address 192.168.56.2
   netmask 255.255.255.0
   network 192.168.56.0
   gateway 192.168.56.1
   dns-nameservers 192.168.56.1

# NAT
auto enp0s8
iface enp0s8 inet dhcp

# Bridgetd
auto enp0s9
iface enp0s9 inet dhcp
EOF