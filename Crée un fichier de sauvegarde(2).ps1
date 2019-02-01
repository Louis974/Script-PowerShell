$date = (Get-Date).AddDays(-1).ToString("dd-MM-yyyy")
Set-Location "C:\Users\louis\Desktop\PowerShell\SAUVEGARDES\"
New-Item -Name "$date" -ItemType directory 

Copy-Item "C:\Users\louis\Desktop\PowerShell\LIVRAISON.csv" -Destination "C:\Users\louis\Desktop\PowerShell\SAUVEGARDES\$date"