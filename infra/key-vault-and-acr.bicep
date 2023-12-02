param keyVaultName string
param containerRegistryName string
param location string = resourceGroup().location
param tenantId string

resource keyvault 'Microsoft.KeyVault/vaults@2023-02-01' = {
  name: keyVaultName
  location: location
  properties: {
    sku: {
      family: 'A'
      name: 'standard'
    }
    tenantId: tenantId
    accessPolicies: []
  }
}

resource containerRegistry 'Microsoft.ContainerRegistry/registries@2021-06-01-preview' = {
  name: containerRegistryName
  location: location
  sku: {
    name: 'Basic'  // Or Standard, Premium, etc.
  }
  properties: {
    adminUserEnabled: true
  }
}
