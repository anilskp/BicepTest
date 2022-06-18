# Biceptest

az deployment group create --name MyDeploy1 --resource-group biceptest-rg --template-file main.bicep --parameters deploymentNameId=MyDeploy1-1 resourceNamePrefix=anil



param location string = resourceGroup().location

@description('Resource Name Prefix')
param resourceNamePrefix string
var envResourceNamePrefix = toLower(resourceNamePrefix)

@description('Deployment name (used as paranet ID for child deployment)')
param deploymentNameId string = '00000000'

@description('Name of the staging deployment slot')
param functionAppStagingSlot string = 'staging'



resource azStorageAccout 'Microsoft.Storage/storageAccounts@2021-09-01' = {
  name: '${envResourceNamePrefix}storage19669'
  location: location

  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}


resource azStorageAccout1 'Microsoft.Storage/storageAccounts@2021-09-01' = {
  name: '${envResourceNamePrefix}storage19669'
  location: location

  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}

var azStorageAccountPrimaryAccessKey = listKeys( azStorageAccout.id,azStorageAccout.apiVersion).keys[0].value





