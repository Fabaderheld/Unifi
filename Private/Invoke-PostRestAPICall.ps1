

function Invoke-POSTRestAPICall {
    [CmdletBinding()]
    param(
        [Parameter(Position = 0, Mandatory = $true, ValueFromPipeline = $true)] `
            [string]$url,
        [Parameter(Position = 2, Mandatory = $true, ValueFromPipeline = $true)] `
            [string]$payload,
        [Parameter(Position = 3, Mandatory = $false, ValueFromPipeline = $true)] `
            [System.Collections.Generic.Dictionary[[String], [String]]]$headers
    )

    try {
        if ($headers) {
            $request = Invoke-RestMethod -Method POST -Headers $headers -Body $payload -Uri $url -ContentType "application/json; charset=utf-8" -WebSession $Session -SkipCertificateCheck
        }
        else {
            $request = Invoke-RestMethod -Method POST -Body $payload -Uri $url -ContentType "application/json; charset=utf-8" -WebSession $Session -SkipCertificateCheck
        }
    }

    catch [System.Net.WebException] {
        $exceptionError = $_.Exception
        $exceptionMessage = $_.Exception.Message

        switch ($exceptionMessage) {
            # Refresh the login if the cookie times out.
            "The remote server returned an error: (401) Unauthorized." {
                Write-Verbose "Connection timed out. Refreshing session."
                Connect-UnifiController -Refresh
                if ($headers) {
                    $request = Invoke-RestMethod -Method POST -Headers $headers -Body $payload -Uri $url -ContentType "application/json; charset=utf-8" -WebSession $Session -SkipCertificateCheck
                }
                else {
                    $request = Invoke-RestMethod -Body $payload -Uri $url -ContentType "application/json; charset=utf-8" -WebSession $Session -SkipCertificateCheck
                }
            }
            default {
                Write-Host "Error Message: $ExceptionMessage"
                exit 1
            }
        }
    }
    return $request
}