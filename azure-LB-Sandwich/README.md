# 2 VM-Series Firewalls in a load balancer sandwich along with two webservers


The intent of this ARM template is to deploy a firewall sandwich environment that includes:
- One Public Load Balancer
- Two Palo Alto Networks Firewalls
- One Internal Load Balancer
- Two Web Servers with apache webserver
- VNET 10.0.0.0/16
- Multiple Subnets and UDRs to support the traffic flow

This template creates all the infrastructure and appropriate UDRs. It does not currently license or configure the firewall.  That will need to be done afterwards.  

[<img src="http://azuredeploy.net/deploybutton.png"/>](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fdjspears%2FPaloAlto%2Fmaster%2Fazure-LB-Sandwich%2Ftemplate.json)
[<img src="https://camo.githubusercontent.com/536ab4f9bc823c2e0ce72fb610aafda57d8c6c12/687474703a2f2f61726d76697a2e696f2f76697375616c697a65627574746f6e2e706e67" data-canonical-src="http://armviz.io/visualizebutton.png" style="max-width:100%;">](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fdjspears%2FPaloAlto%2Fmaster%2Fazure-LB-Sandwich%2template.json)


## Deploy ARM Template using Azure CLI in ARM mode

1. Download the two JSON files: template.json and parameters.json
1. Customize the azureDeploy.parameters.json file and then deploy it from your computer.
1. Install the latest <a href="https://azure.microsoft.com/en-us/documentation/articles/xplat-cli-install/">Azure CLI</a> for your computer.</li>
1. Validate and deploy the ARM template:

``` azure
    azure login
    azure config mode arm
    azure  group  template  validate  -g YourResourceGroupName \
        -e  template.json   -f  parameters.json
    azure group create -v -n YourResourceGroupName -l YourAzureRegion  \
        -d  YourDeploymentLabel  -f template.json -e parameters.json
```

**Check the status of your deployment:**

- CLI: `azure vm show  -g YourResourceGroupName  -n YourDeploymentLabel`
- Azure Portal: Your Resource Group > Deployment or Alert Logs

