
if (-Not (Test-Path C:\ProgramData\chocolatey\bin\choco.exe)) 
{
    Write-Output "Installing Chocolatey"
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    Invoke-Expression ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
}

$chefPackage = 'chefdk'

if (choco search $chefPackage --local-only | Select-String "installed") 
{
    choco install $chefPackage -y -f --ignore-checksums
}

if(-Not (Test-Path c:\projects))
{
    New-Item -Path 'c:\' -Name 'projects' -ItemType 'directory'
}
