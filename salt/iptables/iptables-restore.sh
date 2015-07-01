#!/bin/sh
sudo sh -c '/sbin/iptables -F INPUT; /sbin/iptables -F OUTPUT;'
sudo sh -c '/sbin/iptables-restore --noflush < /etc/iptables.up.rules'
