# Adding Resources
Let's add some resources and fill the ARM template with live finally. To keep things simple we will just add a web app and see where it will lead us to...

### App Service Plan
A web app needs an app service plan to be hosted within. So we better create that first.

```json
{
    "apiVersion": "2017-08-01",
    "type": "Microsoft.Web/serverfarms",
    "kind": "app",
    "name": "MyAwesomeAppServicePlan",
    "location": "West Europe",
    "sku": {
        "name": "F1",
        "tier":"Free"     
    },
    "properties": {}        
}
```

### Web App
Once we have the app service plan in place, we can add a web app that depends on the app service plan.

```json
{
    "apiVersion": "2016-08-01",
    "type": "Microsoft.Web/sites",
    "kind": "app",
    "name": "MyAwesomeWebApp",
    "location": "West Europe",
    "properties": {
        "serverFarmId": "[resourceId('Microsoft.Web/serverfarms', 'MyAwesomeAppServicePlan')]"
    },
    "dependsOn": [
        "[resourceId('Microsoft.Web/serverfarms', 'MyAwesomeAppServicePlan')]"
    ]
}
```

In the JSON excerpt you see something like `[resourceId('...', '...')]` - well this is your first impressions of functions that can be used within JSON templates. More on that will come later in the lab.

    

