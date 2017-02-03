# Azure-Firewall-into-existing-Load-Balancer-Availabilty-set

[<img src="http://azuredeploy.net/deploybutton.png"/>](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fdjspears%2FPaloAlto%2Fmaster%2FAzure-1FW-existing-LB-AVset%2FazureDeploy.json)

- This template was created to support the deployment of a 4 interface Palo Alton Networks firewall into an existing Microsoft Load Balancer / Availability Set deployment. It has the follwing following features and requirements:

FEATURES:
- The firewall deploys with 4 interfaces.  1 MGMT and 3 data plane into an existing VNET and Storage Account.
- Static IP addresses assignment is used for the firewall interfaces.
- This template allows the Firewall to be integrated with a preexisting Microsoft Load Balancer, Backend Pools, and Avaiablility Set.

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

REQUIREMNTS:
- The firewall is put into an existing Availability Set that needs to be provided during deploymnet.  The Availability Set is tied to Ethernet 1, which is normally a Untrust Zone.
- A Load Balancer with Backend Pools must be created and those names are required during the deployment.  This template expects the Load Balancer to be in the same resource group as the firewall.
- The storage account and VNET must be created before deploying this template.
        
