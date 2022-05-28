param location string = resourceGroup().location

resource azStorageAccout 'Microsoft.Storage/storageAccounts@2021-09-01' = {
  name: 'bicepstorage'
  location: location

  kind: 'StorageV2'
  sku: {
    name: 'Premium_LRS'
  }
}
