#login-azaccount

#New-AzResourceGroup -Name "storage-group" -Location "uksouth"

New-AzResourceGroupDeployment -ResourceGroupName "storage-group" -TemplateFile ./template.json -TemplateParameterFile ./parameters.json -Verbose