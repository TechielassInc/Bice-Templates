#Transform Bicep template to ARM template

az bicep build --file .\main.bicep

#Deploy Resource Group
az group create --name SarahBicepDemos --location uksouth

# Deploy Bicep Template to Azure
Az Deployment group create --name StorageDeployment --resource-group SarahBicepDemos --template-file main.bicep --parameters storageAccountName="sarahazunidemo"

#Display outputs
az deployment group show -g SarahBicepDemos -n StorageDeployment --query properties.outputs.storageAccountId.value
az deployment group show -g SarahBicepDemos -n StorageDeployment --query properties.outputs.storageAccountName.value

