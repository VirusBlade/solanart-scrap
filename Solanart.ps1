$CollectionName = "roguesharks"
$HTML = Invoke-RestMethod "https://api.solanart.io/get_nft?collection=$CollectionName&page=0&limit=20&order=price-ASC&min=0&max=99999&search=&listed=true&fits=all&bid=all"
$i=-1
$All =@()
do
{
    $i++
    $All += Invoke-RestMethod "https://api.solanart.io/get_nft?collection=$CollectionName&page=$i&limit=20&order=price-ASC&min=0&max=99999&search=&listed=true&fits=all&bid=all"
}
until ($i -eq $html.pagination.maxPages)
$all.items | ft