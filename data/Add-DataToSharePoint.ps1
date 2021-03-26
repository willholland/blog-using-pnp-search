PARAM(
    [string]$SiteUrl = "https://wchdev.sharepoint.com/teams/BlogPlayground",
    [PSCredential]$Credentials    
)
BEGIN{
    $listName = "Top1000VideoGames"
    $fileName = "video-game-data-top-1000.csv"

    Connect-PnPOnline -Url $SiteUrl -Credentials $Credentials
}
PROCESS {
    # Import Data from CSV
    $dataset = Import-Csv -Path "data/$fileName"
    
    Write-Host "Creating Batch"
    $batch = New-PnPBatch

    Write-Host "Adding Items..."
    foreach($item in $dataset){        
        Add-PnPListItem -List $listName -Batch $batch -Values @{
            Title = $item.Title
            Rank = $item.Rank
            BaseName = $item.basename
            Critic_Score = $item.Critic_Score
            Developer = $item.Developer
            ESRB_Rating = $item.ESRB_Rating
            Genre = $item.Genre
            Global_Sales = $item.Global_Sales
            img_url = $item.img_url
            JP_Sales = $item.JP_Sales
            NA_Sales = $item.NA_Sales
            Other_Sales = $item.Other_Sales
            PAL_Sales = $item.PAL_Sales
            Platform = $item.Platform
            PublisherName = $item.PublisherName
            Total_Shipped = $item.Total_Shipped
            User_Score = $item.User_Score
            Year = $item.Year
        }
    }
    Write-Host "Invoking Batch"
    Invoke-PnPBatch -Batch $batch

}
END {

}