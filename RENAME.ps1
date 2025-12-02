# Renomme les .mp4 à partir de 020.mp4 et plus
$i = 20
Get-ChildItem *.mp4 -File | Sort-Object Name | ForEach-Object {
    $newName = "{0:D3}.mp4" -f $i
    Rename-Item -Path $_.FullName -NewName $newName
    Write-Host "Renommé: $($_.Name) → $newName"
    $i++
}
Write-Host "Terminé! Fichiers renommés de 020 à $($i-1).mp4"
