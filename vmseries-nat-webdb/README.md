# VM-Series with NAT VM, and two VM's
This ARM template deploys a VM-Series next generation firewall VM in an Azure resource group alongwith the following resources similar to a typical two tier architecture. It also addds the relevant user-defined route (UDR) tables to send all traffic through the VM-Series firewall. 

* NAT VM - an Ubuntu VM (A1) with iptables
* Web VM - an Ubuntu VM (A1) as a web server (You can install apache using: )
* DB VM - an Ubuntu VM (A1) that can be setup with a database

The template deploys them into the following VNET layout:
* VNET : 192.168.0.0/16
* Mgmt Subnet: 192.168.0.0/24 - For the firewall's management interface (eth0)
* Untrust Subnet: 192.168.1.0/24
* Web Subnet: 192.168.2.0/24
* DB Subnet: 192.168.3.0/24
* NAT Subnet: 192.168.4.0/24

You can download the templates and customize them as needed. To deploy them from Azure CLI use the following commands:
azure login
azure config mode arm
azure create

See documentation on how to configure the VM-Series firewall after deployment. Here is a basic outline:
* Enable eth1 and eth2 as DHCP interfaces with a default virtual router
* Create static routes for each of the firewall's dataplane interfaces to point to the .1 of its subnet
* Create security policies