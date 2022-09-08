#!/bin/ash

apk add openssh-server

iptables -A INPUT -p tcp --dport 22 -m conntrack --ctstate NEW -j ACCEPT
service iptables save
ip6tables -A INPUT -p tcp --dport 22 -m conntrack --ctstate NEW -j ACCEPT
service ip6tables save

rc-update add sshd default
service sshd start
