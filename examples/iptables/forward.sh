#!/bin/bash
# YOU KNOW THAT IF IPTABLES ISN'T INSTALLED THIS WON'T WORK.

# ./ex-port-forward HOST_PORT VM_IP VM_PORT

# ex forward RDP
# ./ex-port-forward 3389 192.168.122.211 3389
/sbin/iptables -I FORWARD -o virbr0 -d $2 -j ACCEPT
/sbin/iptables -t nat -I PREROUTING -p tcp --dport $1 -j DNAT --to $2:$3


# mkdir /root/iptables
# echo 'iptables-save > /etc/iptables/rules.v4' > /root/iptables/save
# echo 'iptables-restore < /etc/iptables/rules.v4' > /root/iptables/res
# so to save rules and apply them you can just execute some iptables rules and then 
# sh /root/iptables/res; sh /root/iptables/save

# FORWARD ip:port TO ip:port
# FROM HOST 151.80.88.23:80 => TO VM 192.168.122.214:80
# /sbin/iptables -I FORWARD -o virbr0 -d  192.168.122.214 -j ACCEPT
# /sbin/iptables -t nat -I PREROUTING -p tcp -d 151.80.88.23 --dport 80 -j DNAT --to 192.168.122.214:80
