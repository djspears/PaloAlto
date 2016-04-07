# VM-Series with NAT VM, and VM's for Web and DB subnet
This ARM template deploys a VM-Series next generation firewall VM in an Azure resource group alongwith the following resources similar to a typical two tier architecture. It also addds the relevant user-defined route (UDR) tables to send all traffic through the VM-Series firewall. 

* VM-Series Next generation firewall - (D3 VM size)
* NAT VM - an Ubuntu VM (A1) with iptables to forward all packets to Untrust of VM-Series firewall
* Web VM - an Ubuntu VM (A1) that can be setup as a web server
* DB VM - an Ubuntu VM (A1) that can be setup with a database

The template deploys them into the following VNET layout:
* VNET : 192.168.0.0/16
* Mgmt Subnet: 192.168.0.0/24 - For the firewall's management interface (eth0)
* Untrust Subnet: 192.168.1.0/24 - For eth1 of firewall
* Trust Subnet: 192.168.2.0/24 - For eth2 of firewall
* Web Subnet: 192.168.3.0/24
* DB Subnet: 192.168.4.0/24
* NAT Subnet: 192.168.5.0/24

The template also configures Azure's user defined routing (UDR) table to force all packets through the VM-Series firewall. This provides visibility to all traffic from the VM-Series dashboard and allows you to enforce advanced security policies to protect your Azure deployment. 

<p>
<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FPaloAltoNetworks%2Fazure%2Fmaster%2Fvmseries-nat-webdb%2FazureDeploy.json%3Ftoken%3DAJHjA3rKQw9b8VLI8IEgDtq4lxh7Dq9Aks5XAv9NwA%253D%253D" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2FPaloAltoNetworks%2Fazure%2Fmaster%2Fvmseries-nat-webdb%2FazureDeploy.json%3Ftoken%3DAJHjA3rKQw9b8VLI8IEgDtq4lxh7Dq9Aks5XAv9NwA%253D%253D">
    <img src="https://camo.githubusercontent.com/536ab4f9bc823c2e0ce72fb610aafda57d8c6c12/687474703a2f2f61726d76697a2e696f2f76697375616c697a65627574746f6e2e706e67" data-canonical-src="http://armviz.io/visualizebutton.png" style="max-width:100%;">
</a>
</p>

You can download the templates and customize them as needed. To deploy them from Azure CLI use the following commands:
azure login
azure config mode arm
azure group create -v -n <ResourceGroupName>  -l <AzureLocatioName>  -d  <DeploymentLabel>  -f azureDeploy.json  -e azureDeploy.parameters.json
 

See documentation on how to configure the VM-Series firewall after deployment. Here is a basic outline:
* Connect to the firewall using the public IP or DNS assigned to eth0 of firewall
* Enable eth1 and eth2 as DHCP interfaces with a default virtual router
* Create static routes for each of the firewall's dataplane interfaces to point to the .1 of its subnet
* Create a NAT policy inside the firewall to decide where the traffic should go after deployment, for example you can send it, via DNAT, to the webserver (192.168.3.5) in case of Internet facing deployments.
* Create security policies: Inter-zone from Untrust/Trust and Intra-zone (web subnet to/from DB subnet)
* Once these are configured: (a) connect over SSH to the NAT VM's public IP/DNS which sends it to the firewall, which using the firewall's DNAT is sent to the webserver (b) Install an Apache webserver on this VM using  "sudo apt-get install apache2"