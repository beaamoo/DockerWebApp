param acrName string
param location string
param appServicePlanName string
param webAppName string
param containerRegistryName string
param containerRegistryImageName string
param containerRegistryImageVersion string

// Azure Container Registry Module
module acr './modules/acrModule.bicep' = {
  name: acrName
  params: {
    name: acrName
    location: location
    acrAdminUserEnabled: true
  }
}

// Azure Service Plan for Linux Module
module servicePlan './modules/servicePlanModule.bicep' = {
  name: appServicePlanName
  params: {
    name: appServicePlanName
    location: location
    sku: {
      capacity: 1
      family: 'B'
      name: 'B1'
      size: 'B1'
      tier: 'Basic'
      kind: 'Linux'
      reserved: true
    }
  }
}

// Azure Web App for Linux Containers Module
module webApp './modules/webAppModule.bicep' = {
  name: webAppName
  params: {
    name: webAppName
    location: location
    kind: 'app'
    serverFarmId: servicePlan.outputs.serverFarmId
    siteConfig: {
      linuxFxVersion: 'DOCKER|${containerRegistryName}.azurecr.io/${containerRegistryImageName}:${containerRegistryImageVersion}'
      appCommandLine: ''
    }
    appSettings: {
      WEBSITES_ENABLE_APP_SERVICE_STORAGE: 'false'
      DOCKER_REGISTRY_SERVER_URL: '<your_acr_url>'
      DOCKER_REGISTRY_SERVER_USERNAME: '<your_acr_username>'
      DOCKER_REGISTRY_SERVER_PASSWORD: '<your_acr_password>'
    }
  }
}
