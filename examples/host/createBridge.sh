## Install Bridge-Utils on your system.
~$ apt-get install bridge-utils; yum install bridge-utils -y;

## Create Bridge interface.
~$ brctl addbr dope

## Switch your nic to bridge mode.

# ============================================================
auto lo
iface lo inet loopback

auto eth0
iface eth0 inet static
	address STATIC.IP.HERE
	netmask 255.255.255.0
	broadcast STATIC.IP.255

auto dope
iface dope inet static
        address STATIC.IP.HERE
        netmask 255.255.255.0
        broadcast STATIC.IP.HERE.255
        gateway GATEWAY.IP.HERE
        bridge_ports eth0
        bridge_stp off
        bridge_fd 0
        bridge_maxwait 0
# ============================================================

## Add eth0 to bridge.
~$ screen
~$ brctl addif dope eth0; reboot

## (Point of screen session is because after you add bridge to eth0 you'll lose internet,
## but after the reboot everything will be up and running normally and you will have bridge network).
## If you don't do it on screen the Reboot your machine from your panel.
