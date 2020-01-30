    $subId = xxxx-xxx-xxx-xxxx
    $context = Get-AzContext
    $profile = [Microsoft.Azure.Commands.Common.Authentication.Abstractions.AzureRmProfileProvider]::Instance.Profile
    $profileClient = New-Object -TypeName Microsoft.Azure.Commands.ResourceManager.Common.RMProfileClient -ArgumentList ($profile)
    $token = $profileClient.AcquireAccessToken($context.Subscription.TenantId)
    $authHeader = @{
        'Content-Type'  = 'application/json'
        'Authorization' = 'Bearer ' + $token.AccessToken
    }

    $uri = "https://management.azure.com/subscriptions/$subId/providers/Microsoft.Security/settings/WDATP?api-version=2019-01-01"
   

    $body = @{
        "id" = "/subscriptions/$subId/providers/Microsoft.Security/settings/WDATP"
        "name" = "WDATP"
        "kind" = "DataExportSettings"
          "type" =  "Microsoft.Security/settings"
          "properties" = @{
            "enabled" = 'false'
          }
    }

    $request = $body | ConvertTo-Json

    Invoke-RestMethod -Method PUT -Body $request -Headers $authHeader -Uri $uri
