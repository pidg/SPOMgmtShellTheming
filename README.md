# SPOMgmtShellTheming

Some commands you can add to a PowerShell profile to make custom themes easier to deal with in the SharePoint Online Management Shell.

Hint: You can create a profile at `C:\Windows\System32\WindowsPowerShell\1.0\profile.ps1` and it will be loaded on next run.

## Commands

`kConnect tenantname`  
Connects to tenantname using GUI

`kConnectCli tenantname username password`  
Connects to tenantname using CLI

`kThemeAdd MyThemeName @{ theme_data_as_hashtable_here }`  
Creates a new theme (or updates an existing one)

`kThemeRemove MyThemeName`  
Removes a theme

`kThemeRead MyThemeName`  
Outputs a theme (show all custom themes by leaving parameter blank)

## Useful links

* [Microsoft Theme Generator](https://developer.microsoft.com/en-us/fabric#/styles/themegenerator)
* [How to create a multicoloured theme](https://laurakokkarinen.com/how-to-create-a-multicolored-theme-for-a-modern-sharepoint-online-site/)
