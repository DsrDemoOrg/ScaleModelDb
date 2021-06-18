targetScope = 'subscription'

@description('The base name of the resources to be deployed.')
param name string = 'scalemodeldb'

@description('The code for the resources that will be prepended to ensure unique')
param code string = 'dsr'

@allowed([
  'test'
  'prod'
])
param environmentName string

param location string

var resourceGroupName = '${code}-${name}-${environmentName}-rg'

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: resourceGroupName
  location: location
}

