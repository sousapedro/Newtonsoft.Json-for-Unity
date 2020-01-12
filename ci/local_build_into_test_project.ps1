
[CmdletBinding()]
param (
    [string]
    [ValidateSet('Standalone','AOT','Portable','Editor','Tests')]
    $UnityBuild = 'Tests'
)

$ErrorActionPreference = "Stop"

Write-Host ""
Write-Host ">>> (1/2) BUILDING DEBUG BUILD OF PACKAGE USING local_build_into_package.ps1 " -BackgroundColor DarkCyan -ForegroundColor Black
Write-Host ""
&$PSScriptRoot\local_build_into_package.ps1 `
    -Configuration Debug `
    -UnityBuilds @($UnityBuild) `
    -RelativeBuildDestination "Src/Newtonsoft.Json-for-Unity.Tests/Packages/Newtonsoft.Json-for-Unity.Tests/Plugins/Newtonsoft.Json/" `
    -RelativeBuildDestinationBase "Src/Newtonsoft.Json-for-Unity.Tests/Packages/Newtonsoft.Json-for-Unity.Tests/Plugins/" `
    -UseDefaultAssemblyVersion `
    -DontSign
if ($LASTEXITCODE -ne 0) {
    throw "Failed to complete debug build"
}
Write-Host ""
Write-Host ">>> (1/2) COMPLETED DEBUG BUILD OF PACKAGE USING local_build_into_package.ps1 " -BackgroundColor DarkGreen -ForegroundColor Black
Write-Host ""

function Find-UnityEngineDll() {
    $Paths = @()
    if ($IsWindows) {
        # Assuming single Unity installation
        $Paths = @(
            , "$Env:ProgramFiles\Unity\Editor\Data\Managed\UnityEngine.dll"
            , "$Env:ProgramFiles\Unity\Hub\Editor\*\Editor\Data\Managed\UnityEngine.dll"
        )
    } elseif ($IsLinux) {
        $Paths = @(
            , "/opt/Unity/Editor/Data/Managed/UnityEngine.dll"
            , "/$HOME/Unity/Hub/Editor/*/Editor/Data/Managed/UnityEngine.dll"
        )

        if ($Env:WSL_DISTRO_NAME) {
            $Paths += @(
                , "/mnt/c/Program Files/Unity/Editor/Data/Managed/UnityEngine.dll"
                , "/mnt/c/Program Files/Unity/Hub/Editor/*/Editor/Data/Managed/UnityEngine.dll"
                , "/c/Program Files/Unity/Editor/Data/Managed/UnityEngine.dll"
                , "/c/Program Files/Unity/Hub/Editor/*/Editor/Data/Managed/UnityEngine.dll"
            )
        }
    } elseif ($IsMacOs) {
        $Paths = @(
            , "/Applications/Unity/Unity.app/Contents/Managed/UnityEngine.dll"
            , "/Applications/Unity/Hub/Editor/*/Unity.app/Contents/Managed/UnityEngine.dll"
        )
    }

    foreach ($Path in $Paths) {
        if (Test-Path -Path $Path) {
            return $Path
        }
    }

    throw "Unable to find UnityEngine.dll. Searched:`n$Paths"
}

Write-Host ""
Write-Host ">>> (2/2) BUILDING DEBUG BUILD OF TESTS USING local_build_into_package.ps1 " -BackgroundColor DarkCyan -ForegroundColor Black
Write-Host ""

$UnityDllDestination = [System.IO.Path]::GetFullPath("$PSScriptRoot/../Temp/UnityEngine.dll")
$UnityDllDestinationDirectory = [System.IO.Path]::GetDirectoryName($UnityDllDestination)
$UnityDllSource = Find-UnityEngineDll

New-Item -Path $UnityDllDestinationDirectory -ItemType Directory -Force | Out-Null
Copy-Item -Path $UnityDllSource -Destination $UnityDllDestination -Force | Out-Null
Write-Host "Copying $UnityDllSource to <repo>/Temp/UnityEngine.dll"
Write-Host ""

&$PSScriptRoot\local_build_into_package.ps1 `
    -Configuration Debug `
    -UnityBuilds @("Tests") `
    -RelativeBuildSolution "Src/Newtonsoft.Json.Tests/Newtonsoft.Json.Tests.csproj" `
    -RelativeBuildDestination "Src/Newtonsoft.Json-for-Unity.Tests/Packages/Newtonsoft.Json-for-Unity.Tests/Plugins/Newtonsoft.Json.Tests/" `
    -RelativeBuildDestinationBase "Src/Newtonsoft.Json-for-Unity.Tests/Packages/Newtonsoft.Json-for-Unity.Tests/Plugins/" `
    -CopyFiles @("Newtonsoft.Json.Tests.dll", "Newtonsoft.Json.Tests.pdb") `
    -UseDefaultAssemblyVersion `
    -AdditionalConstants "ENABLE_IL2CPP" `
    -DontSign
if ($LASTEXITCODE -ne 0) {
    throw "Failed to complete debug build"
}

Write-Host ""
Write-Host ">>> (2/2) COMPLETED DEBUG BUILD OF TESTS USING local_build_into_package.ps1 " -BackgroundColor DarkGreen -ForegroundColor Black
Write-Host ""
