Using ARM template to deploy preset Grafana with AAD, Kusto and Azure Monitor datasources on Azure Linux Server

Step 1
Create the resource group under which you wish to create a VM for hosting grafana. It is advisable to create a new resource group in case you wish to delete the resources later.

Step 2
Register an app on your AAD for authentication purposes.
Create a key and save the value.
Configure the Reply URL to
http://<domainNamePrefix>.<location>.cloudapp.azure.com:<port>/login/generic_oauth
The above values should be the same values you use in the parameters section of Step 3. location should be the value you choose from the dropdown before pressing edit parameters.

Step 3
Download the Visual Studio project from

https://adbrokergrafanastorage.blob.core.windows.net/grafanasetup/GrafanaAutoSetup.zip

Open the project file, go to project manager, right click on the project  and press deploy.
Sign in with your microsoft alias and select your new resource group. 
Select edit parameters and edit all fields. (Don’t edit location).
Save parameters and run the template.
The process can take 10-15 minutes.
Your grafana instance is ready.
