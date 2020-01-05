
[CmdletBinding()]
param (
    [string]
    [ValidateSet('Standalone','AOT','Portable','Editor','Tests')]
    $UnityBuild = 'Tests'
)

Write-Host ""
Write-Host ">>> BUILDING DEBUG BUILD OF PACKAGE USING local_build_into_package.ps1 " -BackgroundColor DarkCyan -ForegroundColor White
Write-Host ""
&$PSScriptRoot\local_build_into_package.ps1 `
    -Configuration Debug `
    -UnityBuilds @($UnityBuild) `
    -RelativeBuildDestination "Src/Newtonsoft.Json-for-Unity.Tests/Packages/Newtonsoft.Json-for-Unity.Tests/Plugins/Newtonsoft.Json Tests/" `
    -RelativeBuildDestinationBase "Src/Newtonsoft.Json-for-Unity.Tests/Packages/Newtonsoft.Json-for-Unity.Tests/Plugins/" `
    -DontSign
if ($LASTEXITCODE -ne 0) {
    throw "Failed to complete debug build"
}
Write-Host ""
Write-Host ">>> COMPLETED DEBUG BUILD OF PACKAGE USING local_build_into_package.ps1 " -BackgroundColor DarkGreen -ForegroundColor White
Write-Host ""
