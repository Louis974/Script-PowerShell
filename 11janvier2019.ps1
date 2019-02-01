0Set-location "C:\Users\louis\Desktop\TP PowerShell"

$P = Import-Csv "Livraison.csv"

ForEach ($item in $P)

{

$Nom = $item.Nom
$Prenom = $item.Prenom
$path = "C:\Users\louis\Desktop\TP PowerShell\Livreur\" + $item.Nom
If(!(test-path $path))
    {
	New-Item -ItemType Directory -Force -Path $path
    }

}