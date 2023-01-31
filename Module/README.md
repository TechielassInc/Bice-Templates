# Deployment instructions

Step 1: Create a new Resource Group - with PowerShell

```powershell
New-AzResourceGroup -Name “Sarah-RG” -Location "West Europe"
```

Step 2: Deploy template - with PowerShell

```powershell
New-AzResourceGroupDeployment -Name "Templatedeployment" -ResourceGroupName "Sarah-RG" -TemplateFile main.bicep -planName "petshop-appplan" -planSku S1 -sku Standard -productwebSiteName "product-webapp" -shoppingwebSiteName "shopping-webapp" -frontwebSiteName "petshop-frontend-webapp" -startFWIpAddress "127.0.0.1" -endFWIpAddress "127.0.0.1" -databaseName "petshop-db" -sqlServerName "petshop-sql" -sqlAdministratorLogin "petshopowner" -sqlAdministratorLoginPassword "Password123a%12"
```


# Variables 
**Location** - This is the Azure region your resources will be deployed to.

**Resource Group** - This is the name of the Azure Resource Group you will deploy your infrastructure to.

**Plan Name** - This is the name of your Azure App Service Plan.

**Plan Sku** - This is the SKU for your Azure App Service Plan.  This should be S1, B1, P1v2 or something similar. 

**Sku** - This is the SKU for your Azure App Service Plan.  This should be Standard, Premium or equivalent. 

**Product Web Site Name**- This is the name of the Azure Web App that will be used for the deployment of your Product Web Site.

**Shopping Web Site Name** - This is the name of the Azure Web App that will be used for the deployment of your Shopping Cart Web Site.

**Front Web Site Name** - This is the name of the Azure Web App that will be used for the deployment of your Front end Web Site.

**Start FW IP Address** - This is the starting range of the IP address that will be for the SQL Server Firewall Rule.

**End FW IP Address** - This is the end range of the IP address that will be for the SQL Server Firewall Rule.

**Database Name** - This is the name of the database that will be created inside your SQL Server.

**SQL Server Name** - This is the name of your SQL Server.

**SQL Administrator Login** - This is the username for your SQL Server.

**SQL Administrator Login Password** - This is the password for your SQL Server.
