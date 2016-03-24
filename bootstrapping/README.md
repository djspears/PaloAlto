# Bootstrapping a VM-Series firewall in Microsoft Azure

This ARM template deploys a VM-Series next generation firewall VM in an Azure resource group and bootstraps it. The VM will be configured with 3 interfaces that map to 3 subnets: Mgmt, Untrust and Trust. This template allows the user to select a new/existing resource group and storage account, and creates new VNET and subnets.  

This template uses the BYOL SKU for VM-Series. VM-Series image details for PAN-OS 7.1.0:
* Publisher Name: paloaltonetworks
* Offer name: vmseries
* SKU: byol (or bundle1 or bundle2)
* Version: "latest" (or 7.1.0)

Bootstrapping
<li> See technical documentation for more details on the bootstrapping feature.
<li> To bootstrap in Azure you need to create a bootstrap package/container and store it as a data disk VHD.
<li> The bootstrap disk then should be attached to a factory default VM-Series, either during deployment (as done in this template) or after deployment of VM-Series.

<p>
<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3a%2f%2fraw.githubusercontent.com%2fPaloAltoNetworks%2fazure%2fmaster%2fbootstrapping%2fazureDeploy.json%3ftoken%3dAJHjA1rYp_ZUST7ip_H2orGCEWn7qM-Lks5W_XRcwA%253D%253D" target="_blank">
    <img src="https://camo.githubusercontent.com/9285dd3998997a0835869065bb15e5d500475034/687474703a2f2f617a7572656465706c6f792e6e65742f6465706c6f79627574746f6e2e706e67" data-canonical-src="http://azuredeploy.net/deploybutton.png" style="max-width:100%;">
</a>
</p>