#!/bin/bash
#
#enable IP Forwarding
/sbin/sysctl -w net.ipv4.ip_forward=1
#
#install iptables
#
yum -y install iptables-services
# iptables example configuration script
#
# Flush all current rules from iptables
#
iptables -F
#
# For login to NAT machine using ssh -p 50022
iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 50022 -j DNAT --to 10.0.10.4:22
#
# DNAT everything else to FW Untrust except itself
sudo iptables -t nat -A PREROUTING -i eth0 \! -s 10.0.10.4 -j DNAT --to-destination 10.0.1.40
sudo iptables -A FORWARD -i eth0 -j ACCEPT
#
# MASQUERADE all other outdoing traffic from NAT
iptables -t nat -A POSTROUTING -j MASQUERADE
#
#Save IPTables and start
service iptables save
service iptables restart
#Set IPTables to start at boot
chkconfig iptables on
#Enable IP Forwarding on startup
cat <<EOT>> /etc/sysctl.conf
net.ipv4.ip_forward = 1
EOT
