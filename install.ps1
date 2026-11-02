# Downloads the published installer; contains no Power Portal application source.
# Requires Windows PowerShell 5.1 or PowerShell 7 on Windows.
[CmdletBinding()]
param(
    [switch]$Silent,
    [switch]$DownloadOnly,
    [ValidateNotNullOrEmpty()]
    [string]$DownloadDirectory = (Join-Path ([System.IO.Path]::GetTempPath()) 'PowerPortalDownloads')
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

if ($env:OS -ne 'Windows_NT' -or -not [Environment]::Is64BitOperatingSystem) {
    throw 'Power Portal Desktop requires Windows x64.'
}
if ($env:PROCESSOR_ARCHITECTURE -eq 'ARM64' -or $env:PROCESSOR_ARCHITEW6432 -eq 'ARM64') {
    throw 'This release targets Windows x64, not Windows ARM64.'
}
if ($Silent -and -not $DownloadOnly) {
    $identity = [Security.Principal.WindowsIdentity]::GetCurrent()
    try {
        $principal = New-Object Security.Principal.WindowsPrincipal($identity)
        if (-not $principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
            throw 'For -Silent, open PowerShell as Administrator and run this command again.'
        }
    } finally {
        $identity.Dispose()
    }
}

$version = '1.7.5'
$asset = "PowerPortal-Setup-$version-x64.exe"
$expectedHash = '0AD5CFA882611A8B24BAD6A093F3FBF6C68EF0C18232B5EC2BCACA110F81EBD7'
$url = "https://github.com/luisgnserra/powerportaldesktop/releases/download/v$version/$asset"
$directory = [System.IO.Path]::GetFullPath($DownloadDirectory)
$null = New-Item -ItemType Directory -Path $directory -Force
$installer = Join-Path $directory $asset

if (Test-Path -LiteralPath $installer) {
    if ((Get-FileHash -LiteralPath $installer -Algorithm SHA256).Hash -ne $expectedHash) {
        throw "An existing installer has an unexpected SHA-256 checksum. It was not executed. Remove or move this file and retry: $installer"
    }
} else {
    $partial = Join-Path $directory ([Guid]::NewGuid().ToString('N') + '.partial')
    $previousTls = [Net.ServicePointManager]::SecurityProtocol
    try {
        [Net.ServicePointManager]::SecurityProtocol = $previousTls -bor [Net.SecurityProtocolType]::Tls12
        Write-Host "Downloading Power Portal Desktop $version (about 302 MB)..."
        Invoke-WebRequest -Uri $url -OutFile $partial -UseBasicParsing -TimeoutSec 1200
        if ((Get-FileHash -LiteralPath $partial -Algorithm SHA256).Hash -ne $expectedHash) {
            throw 'The download failed SHA-256 verification. The installer was not executed.'
        }
        Move-Item -LiteralPath $partial -Destination $installer
    } finally {
        [Net.ServicePointManager]::SecurityProtocol = $previousTls
        if (Test-Path -LiteralPath $partial) {
            Remove-Item -LiteralPath $partial
        }
    }
}

Write-Host "Verified SHA-256: $expectedHash"
Write-Host "Installer: $installer"
if ($DownloadOnly) {
    Write-Host 'Download verified. No installation was performed.'
    return
}

Write-Host 'This release is unsigned. Proceed only if you trust this distribution.'
if ($Silent) {
    $process = Start-Process -FilePath $installer -ArgumentList '/S' -PassThru -Wait
} else {
    $process = Start-Process -FilePath $installer -Verb RunAs -PassThru -Wait
}
if ($process.ExitCode -ne 0) {
    throw "The installer exited with code $($process.ExitCode). Installation was not confirmed."
}
$registration = Join-Path ${env:CommonProgramFiles(x86)} 'Microsoft Shared\Power BI Desktop\External Tools\PowerPortal.pbitool.json'
if (-not (Test-Path -LiteralPath $registration -PathType Leaf)) {
    throw "The installer exited successfully, but the Power BI External Tools registration is missing: $registration"
}
$tool = Get-Content -LiteralPath $registration -Raw | ConvertFrom-Json
if (-not (Test-Path -LiteralPath $tool.path -PathType Leaf)) {
    throw "The registered Power Portal executable does not exist: $($tool.path)"
}
Write-Host 'Installation and External Tools registration confirmed. Close and reopen Power BI Desktop.'
