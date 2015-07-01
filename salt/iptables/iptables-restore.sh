#!/bin/sh
sudo sh -c '/sbin/iptables-restore --noflush < /etc/iptables.up.rules'
