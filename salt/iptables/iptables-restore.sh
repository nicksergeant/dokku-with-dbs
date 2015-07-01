#!/bin/sh
sudo sh -c '/sbin/iptables -F INPUT; /sbin/iptables -F OUTPUT; /sbin/iptables -F FORWARD'
sudo sh -c '/sbin/iptables-restore --noflush < /etc/iptables.up.rules'
