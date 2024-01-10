#login-azaccount

New-AzResourceGroup -Name "vm-group" -Location "uksouth"

New-AzResourceGroupDeployment -ResourceGroupName "vm-group" -TemplateFile ./template.json -TemplateParameterFile ./parameters.json -Verbose