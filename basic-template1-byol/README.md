# Basic Template for a VM-Series VM with 3 NIC's and 3 subnets

This ARM template deploys a VM-Series next generation firewall VM in an Azure resource group. The VM will be configured with 3 interfaces that map to 3 subnets: Mgmt, Untrust and Trust. This template allows the user to select a new/existing resource group and storage account, and creates new VNET and subnets.  

This template uses the BYOL SKU for VM-Series. VM-Series image details for PAN-OS 7.1.0:
* Publisher Name: paloaltonetworks
* Offer name:
* SKU:
* Version: "latest"

<a href="https://azuredeploy.net/?repository=https://github.com/PaloAltoNetworks/azure/tree/master/basic-template1-byol" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>