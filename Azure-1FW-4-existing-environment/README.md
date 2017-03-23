# Azure-Firewall-into-existing-environment

[<img src="http://azuredeploy.net/deploybutton.png"/>](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fdjspears%2FPaloAlto%2Fmaster%2FAzure-1FW-e4-existing-environment%2FAzureDeploy.json)

This template was created to support the deployment of a 4 interface Palo Alto Networks firewall into an existing Microsoft Azure environment that has the following items already deployed:
-Load Balancer
-Availability Set for the firewall
-VNET - with subnets
-Storage Account for the firewall VHD

It has the follwing following features:

FEATURES:
- The firewall deploys with 4 interfaces.  1 MGMT and 3 data plane into an existing environment.
- Static IP addresses assignment is used for the firewall interfaces.


The following Storage Account types are supported:

                    -Standard_LRS
                    -Standard_GRS
                    -Standard_RAGRS
                    -Premium_LRS
                    
The following VMs are supported:

                    -Standard_D3
                    -Standard_D4
                    -Standard_D3_v2
                    -Standard_D4_v2
                    -Standard_A4
                    -Standard_DS3_v2
                    -Standard_DS4_v2
        
NOTE: Make sure the VMs are supported in the specific Storage Account Type and Azure Region.

After deploying, this firewall can be intetgrated into a load balancer setup via the Azure Portal.
