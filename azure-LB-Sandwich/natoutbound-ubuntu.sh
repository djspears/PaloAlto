#!/bin/bash

sudo iptables --flush
sudo iptables --table nat --flush
sudo iptables --delete-chain
sudo iptables --table nat --delete-chain
sudo iptables -F
sudo iptables -X

# enable IP forwarding
#echo 1 > /proc/sys/net/ipv4/ip_forward
# Make IP forwarding permanent
sudo sysctl -w net.ipv4.ip_forward=1

# MASQUERADE all other outdoing traffic from NAT
sudo iptables -t nat -A POSTROUTING -j MASQUERADE

# Install iptables-persistent package which makes current iptables rules
# persistent across reboots.
# This will work only on Ubuntu
sudo iptables-save -c > /etc/iptables.rules
printf "#!/bin/sh \niptables-restore < /etc/iptables.rules\nexit 0\n" > /etc/network/if-pre-up.d/iptablesload
printf "#!/bin/sh\niptables-save -c > /etc/iptables.rules\nif [ -f /etc/iptables.downrules ]; then\n   iptables-restore < /etc/iptables.downrules\nfi\nexit 0\n" > /etc/network/if-post-down.d/iptablessave
sudo chmod +x /etc/network/if-post-down.d/iptablessave
sudo chmod +x /etc/network/if-pre-up.d/iptablesload
