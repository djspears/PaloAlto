# azure
This ARM template deploys a VM-Series next generation firewall VM in an Azure resource group. The VM will be configured with 3 interfaces that map to 3 subnets: Mgmt, Untrust and Trust. This template allows the user to select a new/existing resource group and storage account, and creates new VNET and subnets.  

This template uses the BYOL SKU for VM-Series. VM-Series image details for PAN-OS 7.1.0:
* Publisher Name: paloaltonetworks
* Offer name:
* SKU:
* Version: "latest"

https://portal.azure.com/?clientOptimizations=false#blade/Microsoft_Azure_Compute/CreateMultiVmWizardBlade/internal_bladeCallId/anything/internal_bladeCallerParams/ {"initialData":{},"providerConfig":{"createUiDefinition":"https%3a%2f%2fraw.githubusercontent.com%2fPaloAltoNetworks%2fazure%2fmaster%2fbasic-template1-byol%2fCreateUiDefinition.json%3ftoken%3dAJHjA_JvAm6B2B4zGArVKJdUVv56oJQjks5W8bBpwA%253D%253D"}}