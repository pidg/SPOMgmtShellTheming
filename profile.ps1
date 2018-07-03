function kConnect
{ 
    # Connect via GUI (useful if you have MFA enabled)
    #   kConnect mytenant

	Connect-SPOService -Url "https://$args-admin.sharepoint.com"
}

function kConnectCli
{
    # Connect via CLI
    #   kConnect mytenant myuser@mytenant.onmicrosoft.com hunter2

    [CmdletBinding()]
    Param
    (
        [parameter(mandatory=$true, position=0)][string]$tenant,
        [parameter(mandatory=$true, position=1)][string]$username,
        [parameter(mandatory=$true, position=2)][string]$password
    )

    $cred = New-Object -TypeName System.Management.Automation.PSCredential -argumentlist $username, $(convertto-securestring $password -asplaintext -force)

    Connect-SPOService -Url https://$tenant-admin.sharepoint.com -Credential $cred

}

function kThemeAdd
{
    # Create a new theme
    #   kThemeAdd MyThemeName @{"themePrimary" = "#ff0000" .... }

    [CmdletBinding()]
    Param
    (
        [parameter(mandatory=$true, position=0)][string]$ThemeName,
        [parameter(mandatory=$true, position=1)][hashtable]$ThemePalette
    )

	Add-SPOTheme -Name "$ThemeName" -Palette $ThemePalette -IsInverted $false -Overwrite
}

# Remove a theme
function kThemeRemove { Remove-SPOTheme -Name "$args" }

# View a theme's details
function kThemeRead { Get-SPOTheme -Name "$args" | ConvertTo-Json }
