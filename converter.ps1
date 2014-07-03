$name = Read-Host "enter string: "
$name -replace "[\[\]]" ,""
$name -replace "nvarchar[^,.]*", "string"
$name -replace "datetime", "timestamp"
$name -replace "money", "decimal"
Write-Host "\nReplaced. Result:\n"
Write-Host $name
