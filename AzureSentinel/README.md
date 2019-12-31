# Deploy Azure Sentinel

This template allows you to deploy Azure Sentinel to whether a new Log Analytics workspace or an existing one.

You would need to ensure your deployment targets to the corresponding resource group for existing Log Analytics workspace

```powershell
New-AzResourceGroupDeployment -ResourceGroupName "azsec-corporate-rg" 
                              -TemplateParameterFile .\azuredeploy.parameters.json `
                              -TemplateFile .\azuredeploy.json `
```