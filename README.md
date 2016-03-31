# team-foundation-server-test-vm

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FJamesCarscadden%2Fteam-foundation-server-test-vm%2Fmaster%2FTFSVirtualMachine.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2FJamesCarscadden%2Fteam-foundation-server-test-vm%2Fmaster%2FTFSVirtualMachine.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>

This template will install a simple server with a default installation of Team Foundation Server 2015 Update 1. This is suitable for sandbox usage or experimentation.

Some limitations:

- Reporting is not installed
- SharePoint is not installed
- No build service is configured by default

This template can take significant time to run, so be patient.

## Deploy

1. Using Azure CLI

    Clone the files to your local machine, and then open a terminal at the cloned directory. Make sure you are logged in using azure cli, and that you are in Resource Manager mode. (More on how to do that at the link below)

    ```
    azure group create <resource group name> <location>; azure group deployment create -v -f TFSVirtualMachine.json <resource group name> <deployment name>
    ```

  https://azure.microsoft.com/en-us/documentation/articles/xplat-cli-azure-resource-manager/

2. Using Powershell

  https://azure.microsoft.com/en-us/documentation/articles/powershell-azure-resource-manager/

3. Using Azure Portal
  Click the "Deploy to Azure" button.
