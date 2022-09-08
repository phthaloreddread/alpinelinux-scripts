#!/bin/ash

apk add iptables ip6tables

rc-update add iptables default
rc-update add ip6tables default

iptables -F INPUT
iptables -F FORWARD
iptables -F OUTPUT

service iptables save

iptables -P INPUT DROP
iptables -A INPUT -m conntrack --ctstate INVALID -j DROP
iptables -A INPUT -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT

service iptables save
service iptables start

ip6tables -F INPUT
ip6tables -F FORWARD
ip6tables -F OUTPUT

service ip6tables save

ip6tables -P INPUT DROP
ip6tables -A INPUT -m conntrack --ctstate INVALID -j DROP
ip6tables -A INPUT -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT

service ip6tables save
service ip6tables start
