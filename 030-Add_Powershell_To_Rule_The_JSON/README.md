# Add Powershell To Rule The JSON
Until now we have written some JSON that makes up our desired Azure infrastructure. One way to deploy this JSON is to make use of the Azure RM Powershell Commandlets.

Make use of `deploy.ps1` and hack your code into that file. In the end you should make the file looking something like `deploy-final.ps1`.

## To my desire...
Everything regarding Powershell and ARM templates is to be thought of a desired state configuration. Deploying an ARM template or calling commandlets of the Azure RM Powershell will lead to the desired configuration.

```powershell
Login-AzureRmAccount
New-AzureRmResourceGroup -Name "MyAwesomeResourceGroup" -Location "West Europe"
New-AzureRmResourceGroupDeployment -ResourceGroupName "MyAwesomeResourceGroup" -TemplateFile template-final.json
```

After the login to your subscription we need to ensure that the target resource group does exist! Everything is based on a resource group.
Tha last statement will (hopefully) deploy the template file to azure.