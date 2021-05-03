
@{

    # Script module or binary module file associated with this manifest.
    RootModule = '.\Unifi.psm1'
    
    # Version number of this module.
    ModuleVersion = '1.0'
    
    # Supported PSEditions
    # CompatiblePSEditions = @()
    
    # ID used to uniquely identify this module
    GUID = '202e268d-610c-48ec-b0e1-52e9f091e82b'
    
    # Author of this module
    Author = 'Michael McCool'
    
    # Company or vendor of this module
    CompanyName = 'Michael McCool'
    
    # Copyright statement for this module
    Copyright = '(c)2021 Michael McCool'
    
    # Description of the functionality provided by this module
    Description = 'This module allows you to connect to the Unifi controller REST API.'
    
    # Minimum version of the Windows PowerShell engine required by this module
    PowerShellVersion = '5.0'
    
    # Name of the Windows PowerShell host required by this module
    # PowerShellHostName = ''
    
    # Minimum version of the Windows PowerShell host required by this module
    # PowerShellHostVersion = ''
    
    # Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # DotNetFrameworkVersion = ''
    
    # Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # CLRVersion = ''
    
    # Processor architecture (None, X86, Amd64) required by this module
    # ProcessorArchitecture = ''
    
    # Modules that must be imported into the global environment prior to importing this module
    # RequiredModules = @()
    
    # Assemblies that must be loaded prior to importing this module
    # RequiredAssemblies = @()
    
    # Script files (.ps1) that are run in the caller's environment prior to importing this module.
    # ScriptsToProcess = @()
    
    # Type files (.ps1xml) to be loaded when importing this module
    # TypesToProcess = @()
    
    # Format files (.ps1xml) to be loaded when importing this module
    # FormatsToProcess = @()
    
    # Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
    # NestedModules = @()
    
    # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
    FunctionsToExport = @(
        'Clear-UnifiSiteAlarm',
        'Connect-UnifiController',
        'Disconnect-UnifiController',
        'Get-UnifiAdmin',
        'Get-UnifiControllerName',
        'Get-UnifiSite',
        'Get-UnifiSiteAdmin',
        'Get-UnifiSiteAlarm',
        'Get-UnifiSiteBackup',
        'Get-UnifiSiteClient',
        'Get-UnifiSiteCountryCode',
        'Get-UnifiSiteDevice',
        'Get-UnifiSiteDynamicDNS',
        'Get-UnifiSiteEvent',
        'Get-UnifiSiteFirewallGroup',
        'Get-UnifiSiteFirewallRule',
        'Get-UnifiSiteHealth',
        'Get-UnifiSiteKnownAccessPoint',
        'Get-UnifiSiteNetwork',
        'Get-UnifiSitePortForwarding',
        'Get-UnifiSiteRadiusAccount',
        'Get-UnifiSiteRadiusProfile',
        'Get-UnifiSiteWirelessRFChannel',
        'Get-UnifiSiteSetting',
        'Get-UnifiStatus',
        'Get-UnifiSiteDevice',
        'Get-UnifiSiteRouting',
        'Get-UnifiSiteSwitchProfile',
        'Get-UnifiSiteSystemInformation',
        'Get-UnifiSiteTag',
        'Get-UnifiSiteWarning',
        'Get-UnifiSiteWhoAmI',
        'Get-UnifiSiteWirelessNetwork',
        'Get-UnifiTimeZone',
        'Get-UnifiWhoAmI',
        'Get-UnifiEventStrings',
        'Get-UnifiProductList',
        'Grant-UnifiSuperAdmin',
        'New-UnifiSiteAdmin',
        'Remove-UnifiAdmin',
        'Remove-UnifiSiteAdmin',
        'Revoke-UnifiSuperAdmin',
        'Set-UnifiSiteAdmin',
        'Set-UnifiSiteDevice',
        'Set-UnifiSiteSetting',
        'Test-UnifiSiteKnownSetting'
    )
    
    # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
    CmdletsToExport = @()
    
    # Variables to export from this module
    VariablesToExport = '*'
    
    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    AliasesToExport = @()
    
    # DSC resources to export from this module
    # DscResourcesToExport = @()
    
    # List of all modules packaged with this module
    # ModuleList = @()
    
    # List of all files packaged with this module
    # FileList = @()
    
    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData = @{
    
        PSData = @{
    
            # Tags applied to this module. These help with module discovery in online galleries.
             Tags = @('Unifi','api','REST','Ubiquiti','Wireless','controller','cloudkey')
    
            # A URL to the license for this module.
             LicenseUri = 'https://github.com/netmc/Unifi-PS-Module/blob/main/LICENSE' #MIT license
    
            # A URL to the main website for this project.
             ProjectUri = 'https://github.com/netmc/Unifi-PS-Module'
    
            # A URL to an icon representing this module.
            IconUri = ''
    
            # ReleaseNotes of this module
            ReleaseNotes = 'This module allows for management of Unifi Controllers using PowerShell. This is the initial release.'
    
        } # End of PSData hashtable
    
    } # End of PrivateData hashtable
    
    # HelpInfo URI of this module
    #HelpInfoURI = ''
    
    # Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
    # DefaultCommandPrefix = ''
    
    }
 