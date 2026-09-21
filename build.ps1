$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $root
New-Item -ItemType Directory -Force dist | Out-Null
$env:CGO_ENABLED = '0'
$env:GOOS = 'windows'
$env:GOARCH = 'amd64'
go build -trimpath -ldflags='-s -w' -o 'dist/YunDongIP-windows-amd64.exe' './cmd/yundongip'
Write-Host 'Built: dist/YunDongIP-windows-amd64.exe'
