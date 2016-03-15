# azure
This ARM template deploys a VM-Series next generation firewall VM in an Azure resource group. The VM will be configured with 3 interfaces that map to 3 subnets: Mgmt, Untrust and Trust. This template allows the user to select a new/existing resource group and storage account, and creates new VNET and subnets.  

This template uses the BYOL SKU for VM-Series. VM-Series image details for PAN-OS 7.1.0:
* Publisher Name: paloaltonetworks
* Offer name:
* SKU:
* Version: "latest"

<a href="https%3a%2f%2fportal.azure.com%2f%3fclientOptimizations%3dfalse%23blade%2fMicrosoft_Azure_Compute%2fCreateMultiVmWizardBlade%2finternal_bladeCallId%2fanything%2finternal_bladeCallerParams%2f+%7b%22initialData%22%3a%7b%7d%2c%22providerConfig%22%3a%7b%22createUiDefinition%22%3a%22https%253a%252f%252fraw.githubusercontent.com%252fPaloAltoNetworks%252fazure%252fmaster%252fbasic-template1-byol%252fCreateUiDefinition.json%253ftoken%253dAJHjA_JvAm6B2B4zGArVKJdUVv56oJQjks5W8bBpwA%25253D%25253D%22%7d%7d" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>