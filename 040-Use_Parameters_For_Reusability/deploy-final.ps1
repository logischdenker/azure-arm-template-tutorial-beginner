Login-AzureRmAccount
New-AzureRmResourceGroup -Name "MyAwesomeResourceGroup" -Location "West Europe"
New-AzureRmResourceGroupDeployment `
    -ResourceGroupName "MyAwesomeResourceGroup" `
    -TemplateFile ".\template-final.json" `
    -webAppName "MyAwesomeParameterizedWebAppName"