# User Parameters For Reusability
Parameters can help to generalize your template, so it can be used in more than just one scenario

```json
{
    "parameters": {
        "webAppName": {
        "type": "string"
        }
    }
}
```
In this example we se a new parameter named `webAppName` of type `string`. There are many more properties to be used with parameters. But a name and a type are the minimum to be defined.

Not defining any default value for a parameter will any deployment method automatically ask for the values of the parameter.

Once the parameter has been defined it can be used anywhere in the template by just calling a JSON function - e.g. `[parameters('webAppName')]`

## Set parameters through Powershell
One way to set parameters is to pass them into the deployment by Powershell by just adding them to the call of the `New-AzureRmResourceGroupDeployment` cmdlet.

Example: `New-AzureRmResourceGroupDeployment [all the other PS parameters go here] -webAppName 'MyWebAppName'`

Assuming you are a Powershel guru, you also know how to get the parameters interactivly or from the outside world through a CI/CD pipeline?!?
Correct - just define a parameter section within your Powershell script like this one for example:

```powershell
param (
    [string] $webAppName = "MyWebAppName"
)
```