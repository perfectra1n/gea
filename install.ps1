<#
.SYNOPSIS
    gea has moved. This runs the installer from its new location.

.DESCRIPTION
    gea now lives in the fjo repository, in the gea/ directory:

        https://github.com/perfectra1n/fjo/tree/main/gea

    This script is kept so that the old install command keeps working. The new
    installer honours the same knobs ($env:GEA_VERSION, $env:GEA_INSTALL_DIR).
    Prefer the new command:

        irm https://raw.githubusercontent.com/perfectra1n/fjo/main/gea/install.ps1 | iex
#>

$ErrorActionPreference = 'Stop'

$script = Invoke-RestMethod 'https://raw.githubusercontent.com/perfectra1n/fjo/main/gea/install.ps1'
if (-not $script) { throw 'gea: downloaded an empty installer' }
Invoke-Expression $script
