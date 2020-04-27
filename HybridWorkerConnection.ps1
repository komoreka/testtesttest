function HybridWorkekConnection {

Param(    

[string]$EndPoint,
[string]$Token
)

$GroupName = $env:COMPUTERNAME

Install-PackageProvider NuGet -Force
Set-PSRepository PSGallery -InstallationPolicy Trusted
install-module az -confirm:$false

cd "C:\Program Files\Microsoft Monitoring Agent\Agent\AzureAutomation\*\HybridRegistration"
Import-Module .\HybridRegistration.psd1
Add-HybridRunbookWorker –GroupName $GroupName -EndPoint $EndPoint -Token $Token
<<<<<<< HEAD
}
=======
}
>>>>>>> 810cdd1e8e4246e4dadd8c4b1d98507c030095e0
