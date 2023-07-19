
$dir = "C:\Users\eneleich\Desktop\En Venta\1- Laptops\Dell Latitude 6540"
$itemName = "E6540"
$ext = ".jpg"


cd $dir
$filesInfo = Get-ChildItem *

for($i = 0; $i -lt $filesInfo.Length; $i++){
    Rename-Item -Path $filesInfo[$i] -NewName "$itemName-$i$ext"
}

#If needed
#$filesInfo = Get-ChildItem *.jpg | Rename-Item -NewName { $_.Name -replace 'IMG','foto' }
#$text -match 'foto_[0-9]+_[0-9]+'