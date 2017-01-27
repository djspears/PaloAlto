# azure-vnet

[<img src="http://azuredeploy.net/deploybutton.png"/>](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fdjspears%2FPaloAlto%2Fmaster%2FAzure-vnet-static-ip%2FazureDeploy.json)

[<img src="https://camo.githubusercontent.com/536ab4f9bc823c2e0ce72fb610aafda57d8c6c12/687474703a2f2f61726d76697a2e696f2f76697375616c697a65627574746f6e2e706e67" data-canonical-src="http://armviz.io/visualizebutton.png" style="max-width:100%;">](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fdjspears%2FPaloAlto%2Fmaster%2FAzure-vnet-static-ip%2FazureDeploy.json)


- This is a template from the Palo Alto Networks Github site that has been modified and supports the following features:
- This firewall deploys with 4 interfaces.  1 MGMT and 3 data plane. (NEW)
- This template also supports deloyment into existing VNETs and storage accounts within the same region.  They can be in different Resource Groups.
- The template also supports deployment into a new or existing Resource Group.
- Added support for DS3_v2 and DS_v4 VMs and Premium Storage. (NEW)
