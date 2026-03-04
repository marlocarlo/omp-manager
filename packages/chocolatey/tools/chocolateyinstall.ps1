# ============================================================================
# TEMPLATE ONLY — DO NOT PUSH THIS FILE DIRECTLY TO CHOCOLATEY
# ============================================================================
# The production chocolateyinstall.ps1 is generated at publish time with the
# correct SHA256 checksum by GitHub Actions:
#   .github/workflows/release.yml  (publish-chocolatey job)
#
# It downloads the release zip, computes the hash, and generates this file.
# ============================================================================

$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  url64bit       = 'https://github.com/marlocarlo/omp-manager/releases/download/v__VERSION__/omp-manager-v__VERSION__-windows-x64.zip'
  checksum64     = '__SHA256_COMPUTED_AT_PUBLISH_TIME__'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

Install-BinFile -Name 'omp-manager' -Path (Join-Path $toolsDir 'omp-manager.exe')
