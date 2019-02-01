
Set-location "C:\Users\louis\Desktop\TP PowerShell"

$P = Import-Csv "LIVRAISON.csv"

ForEach ($item in $P)

{

$Nom = $item.Nom
$CSV_NAME = $item.Commande+".csv"
$path = "C:\Users\louis\Desktop\TP PowerShell\Livreur\" + $item.Nom
$CSV_PATH = $path + "\" + $CSV_NAME

If(!(test-path $path))
    {
	New-Item -ItemType Directory -Force -Path $path
    }
    New-Item -ItemType file -Force -Path $CSV_PATH
}