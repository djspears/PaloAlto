# VM-Series Simple Template
This ARM template deploys a VM-Series next generation firewall VM in an Azure resource group. It lets you select your:
* Resource Group and Storage Account inside it
* VNET's CIDR (/16 range) with 3 subnets: Mgmt, Untrust, Trust
* VM-Series (BYOL edition) D3 VM with 3 NIC's that map to above subnets

This template lets you do customized deployments of VM-Series instead of deploying from the Azure Marketplace. You can deploy using the "Deploy to Azure" button below or download the template and customize it to your needs. You can also fork the templates in to your own GitHub repository.

<p>
<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FPaloAltoNetworks%2Fazure%2Fmaster%2Fvmseries-simple-template%2FazureDeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2FPaloAltoNetworks%2Fazure%2Fmaster%2Fvmseries-simple-template%2FazureDeploy.json">
    <img src="https://camo.githubusercontent.com/536ab4f9bc823c2e0ce72fb610aafda57d8c6c12/687474703a2f2f61726d76697a2e696f2f76697375616c697a65627574746f6e2e706e67" data-canonical-src="http://armviz.io/visualizebutton.png" style="max-width:100%;">
</a>
</p>
<h4>Deploy ARM Template using Azure CLI in ARM mode</h4>
<ol>
<li> Download the two JSON files: azureDeploy.json and azureDeploy.parameters.json
<li> Customize the azureDeploy.parameters.json file and then deploy it from your computer.
<li> Install the latest <a href="https://azure.microsoft.com/en-us/documentation/articles/xplat-cli-install/">Azure CLI</a> for your computer.</li>
<li> Validate and deploy the ARM template:
 </ol>
<pre><
    azure login
    azure config mode arm
    azure  group  template  validate  -g YourResourceGroupName \
        -e  azureDeploy.json   -f  azureDeploy.parameters.json
    azure group create -v -n YourResourceGroupName -l YourAzureRegion  \
        -d  YourDeploymentLabel  -f azureDeploy.json -e azureDeploy.parameters.json
</pre>

Check the status of your deployment:
<li>CLI: <code>azure vm show  -g YourResourceGroupName  -n YourDeploymentLabel</code>
<li>Azure Portal: Your Resource Group > Deployment or Alert Logs
<p>
If you are creating customized ARM templates you can use the following information to deploy VM-Series:
<li> Publisher name: paloaltonetworks
<li> Offer: vmseries1
<li> SKU: byol or bundle1 or bundle2
<li> Version: 7.1.0 or latest