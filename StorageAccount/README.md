# Summary
This template is used to deploy a Storage Account resource in Azure that provides baseline configuration and security metrics covering not only CIS (Center of Internet Security) but also other security configurations based on threat model.

For more information about why you need this template, read this this article https://azsec.azurewebsites.net/2019/12/08/deploy-a-compliant-storage-account-service/

# Storage Baseline Characteristics

| **Characteristic** | **Why** |
| ------------- | --- |
| storageAccountPrefix | This is to control length of name, as well as to ensure name is unique |
| resourceTag | This is to ensure you have better cloud resource inventory and governance |
| storageAccountType | You should always use General-Purpose V2 for Azure Storage nowaday |
| storageAccountSku | Select SKU that supports replication. Bear in mind that not all regions are supported |
| advancedThreatProtectionEnabled | This [article](https://docs.microsoft.com/en-us/azure/storage/common/storage-advanced-threat-protection?tabs=azure-portal) provides information about Azure Storage ATP. |
| centralLogWorkspaceId | Storage Account metrics should be stored in a workspace for operational monitoring. Note that this is not Storage Analytics log |
| encryption |  By default storage is encrypted by Microsoft encryption service. Unless KeyVault is provided.|
| subnetServiceEndpoint | Enable Service Endpoint to restrict access to your storage account. |
| anonymousAlertRule | An alert when anonymous authentication is succeeded |

# Notes
- As of this release in 12/08/2019 Microsoft still doesn't support to enable Storage Analytics via Azure ARM template.
- Storage Analytics Logging is not supported in **Premium** storage account.