extension MicrosoftSecurity

 

// Example: Detection Rule (one of several supported resource types)

resource detectionRule 'Microsoft.Security/detectionRules@2026-01-01-preview' = {

  displayName: 'My Detection Rule Test Test'

  isEnabled: true

  queryCondition: {

    queryText: 'DeviceEvents | take 10'

  }

  schedule: {

    period: '24H'

  }

  detectionAction: {

    alertTemplate: {

      title: 'Security Alert'

      description: 'Custom detection'

      severity: 'medium'

      category: 'Execution'

      recommendedActions: 'Investigate'

      mitreTechniques: []

      impactedAssets: [

        {

          '@odata.type': '#microsoft.graph.security.impactedDeviceAsset'

          identifier: 'deviceName'

        }

      ]

    }

    responseActions: []

  }

}

 

// Other resource types: Microsoft.Security/<resourceType>@<apiVersion>

 
