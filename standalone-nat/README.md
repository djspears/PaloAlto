# Standalone NAT VM for VM-Series deployed from Azure Marketplace
Azure currently supports a single public IP per VM. This section provides information on how to configure a NAT VM in front of the Untrust interface of VM-Series. You can also use a 3rd party load balancer in front of VM-Series to scale out 1/more firewalls. See technical documentation for information on deploying VM-Series from Azure Marketplace.   

Steps:
<ol>
<li> Follow documentation to deploy VM-Series from Azure Marketplace
<li> Deploy an Ubuntu 14.04 LTS VM from the Azure Marketplace. You can use an D1 or A1 VM size.
<li> Add the iptables rules (nat-iptables.sh) into the NAT VM. Make sure to adjust/update the rules for the NAT subnet.
<li> In all the internal/private subnets (such as web/db/app tiers): Create Azure UDR rules to force all traffic through the firewall's Trust interface (usutally eth2).
<li> In all the external/public subnets (such as NAT/DMZ tiers): Create Azure UDR rules to force all traffic through the firewall's Untrust interface (usually eth1).
<li> Login to the VM-Series firewall to configure it via the management interface (eth0).
</ol>

Reference Links:
<li><a href="https://www.paloaltonetworks.com/documentation/71/virtualization/virtualization/set-up-the-vm-series-firewall-in-azure">Technical documentation</a>
<li><a href="https://www.paloaltonetworks.com/products/secure-the-network/virtualized-next-generation-firewall/vm-series-for-azure">VM-Series Datasheet</a>
<li><a href="https://azure.microsoft.com/en-us/documentation/articles/resource-group-template-deploy/#deploy-with-azure-cli">Deploying ARM Templates</a>