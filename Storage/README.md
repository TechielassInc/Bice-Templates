# Deployment instructions

Step 1:  Create a new Resource Group - using PowerShell

```powershell
New-AzResourceGroup -Name “Sarah-RG” -Location "West Europe"
```

Step 2: Deploy template - using PowerShell

```powershell
New-AzResourceGroupDeployment -Name "bicep-deployment" -ResourceGroupName "Sarah-RG" -TemplateFile main.bicep
```
