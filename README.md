# VM-Series for Microsoft Azure
This is a repository for Azure Resoure Manager (ARM) templates to deploy VM-Series next generation firewall from Palo Alto Networks in to the Azure public cloud. 

Expected availability dates of VM-Series in Azure Marketplace:
* BYOL - Now available in <a href="https://azure.microsoft.com/en-us/marketplace/partners/paloaltonetworks/vmseriesbyol-template2template2-3nic-3subnetbyol/">Azure Marketplace</a>
* PAYG - To be announced

<li><a href="https://www.paloaltonetworks.com/documentation/71/virtualization/virtualization/set-up-the-vm-series-firewall-in-azure">Technical documentation</a>
<li><a href="https://www.paloaltonetworks.com/products/secure-the-network/virtualized-next-generation-firewall/vm-series-for-azure">VM-Series Datasheet</a>
<li><a href="https://azure.microsoft.com/en-us/documentation/articles/resource-group-template-deploy/#deploy-with-azure-cli">Deploying ARM Templates</a>

NOTE: 
<li> Deploying ARM templates requires some customization of the JSON. Please review the basic structre of ARM templates.
<li> When deploying an ARM template you may see the following error:
    <pre>
    "ResourceDeploymentFailure\",\r\n \"message\": \"The resource operation completed with terminal provisioning state 'Failed'.\",\r\n \"details\": [\r\n {\r\n \"code\": \"ImageNotFound\",\r\n \"message\": \"The platform image 'paloaltonetworks:vmseries1:byol:latest' is not available. Verify that all fields in the storage profile are correct.\"
    </pre> 
<li>Before you use the custom ARM templates here, you must first deploy the related SKU from the Azure Marketplace into the intended/destination Azure location. This enables programmatic access (i.e. template-based deployments) to deploy the SKU from Azure Marketplace. You can then delete the Marketplace-based deployment if you don't need it.
<li> For example, if you plan to use a custom ARM template to deploy a BYOL VM of VM-Series into Australia-East, then first deploy the BYOL VM from Marketplace into Australia. This is needed only once, the first time. You can then delete this VM and its related resources. Now your ARM templates, from GitHub or via CLI, will work. 
