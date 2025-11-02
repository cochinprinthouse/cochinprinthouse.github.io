# PowerShell Script to Download Images from Cochin Print House Website
# Run this script in PowerShell: .\download-images.ps1

Write-Host "Cochin Print House - Image Download Script" -ForegroundColor Green
Write-Host "==========================================" -ForegroundColor Green
Write-Host ""

# Create images directory if it doesn't exist
$imagesDir = ".\images"
if (-not (Test-Path $imagesDir)) {
    New-Item -ItemType Directory -Path $imagesDir | Out-Null
}

# Define image URLs and filenames
$images = @(
    @{url="https://static.wixstatic.com/media/2e8403_a09cb9e8eea54b99a4540f008e2136b3~mv2.png"; file="logo.png"},
    @{url="https://static.wixstatic.com/media/2e8403_e511f6bec81a4c94a3c3edb4e0c76fc3~mv2.png"; file="logo-white.png"},
    @{url="https://static.wixstatic.com/media/2e8403_34eab4fa5c804701ace622efa393dbd4~mv2.jpg"; file="strip-bg.jpg"},
    @{url="https://static.wixstatic.com/media/2e8403_41280974e5164ca7a054bcfd177c395f~mv2.png"; file="pre-press-btn.png"},
    @{url="https://static.wixstatic.com/media/2e8403_f8207ad0607449a48faac48f1ae20411~mv2.png"; file="packaging-btn.png"},
    @{url="https://static.wixstatic.com/media/2e8403_b1730421982a4664a0cd185ad8509a04~mv2.png"; file="exports-btn.png"},
    @{url="https://static.wixstatic.com/media/2e8403_24eb54b623454c60b4e95f59b94e42df~mv2.png"; file="muller-martini.png"},
    @{url="https://static.wixstatic.com/media/2e8403_f6e26d530d574d17bbe0172841e1ad40~mv2.png"; file="machine2.png"},
    @{url="https://static.wixstatic.com/media/2e8403_571677ca04a04d88aa6f6b5313612bc0~mv2.jpg"; file="location-main.jpg"},
    @{url="https://static.wixstatic.com/media/2e8403_87a1793dd4714329aab56f8ed4552a0a~mv2.png"; file="eye-bg.png"},
    @{url="https://static.wixstatic.com/media/2e8403_571b22a521fa42b2a43c7b27ab845fee~mv2.jpg"; file="icon1.jpg"},
    @{url="https://static.wixstatic.com/media/2e8403_c239ebd191124e87aacd5bc9076a706f~mv2.jpg"; file="icon2.jpg"}
)

$successCount = 0
$failCount = 0

foreach ($image in $images) {
    $outputPath = Join-Path $imagesDir $image.file
    
    Write-Host "Downloading: $($image.file)..." -NoNewline
    
    try {
        Invoke-WebRequest -Uri $image.url -OutFile $outputPath -ErrorAction Stop
        Write-Host " [SUCCESS]" -ForegroundColor Green
        $successCount++
    }
    catch {
        Write-Host " [FAILED]" -ForegroundColor Red
        Write-Host "  Error: $($_.Exception.Message)" -ForegroundColor Yellow
        $failCount++
    }
    
    Start-Sleep -Milliseconds 500
}

Write-Host ""
Write-Host "==========================================" -ForegroundColor Green
Write-Host "Download Summary:" -ForegroundColor Cyan
Write-Host "  Successfully downloaded: $successCount images" -ForegroundColor Green
Write-Host "  Failed: $failCount images" -ForegroundColor $(if ($failCount -gt 0) { "Red" } else { "Green" })
Write-Host ""
Write-Host "Note: Some images may need to be downloaded manually from the website." -ForegroundColor Yellow
Write-Host "Check the images/README.md file for complete image list and URLs." -ForegroundColor Yellow
Write-Host ""

# Create placeholder images for missing ones
Write-Host "Creating placeholder images for missing files..." -ForegroundColor Cyan

$placeholders = @(
    @{file="printing-btn.png"; text="Printing"},
    @{file="post-press-btn.png"; text="Post Press"},
    @{file="machine1.png"; text="Machine 1"},
    @{file="location.png"; text="Location Map"},
    @{file="gallery1.jpg"; text="Gallery 1"},
    @{file="gallery2.jpg"; text="Gallery 2"},
    @{file="gallery3.jpg"; text="Gallery 3"},
    @{file="gallery4.jpg"; text="Gallery 4"},
    @{file="gallery5.jpg"; text="Gallery 5"},
    @{file="gallery6.jpg"; text="Gallery 6"},
    @{file="team1.jpg"; text="Team Member 1"},
    @{file="team2.jpg"; text="Team Member 2"},
    @{file="team3.jpg"; text="Team Member 3"}
)

foreach ($placeholder in $placeholders) {
    $outputPath = Join-Path $imagesDir $placeholder.file
    
    if (-not (Test-Path $outputPath)) {
        Write-Host "Creating placeholder: $($placeholder.file)..." -NoNewline
        
        # Create a simple SVG placeholder
        $svgContent = @"
<svg width="400" height="300" xmlns="http://www.w3.org/2000/svg">
  <rect width="400" height="300" fill="#f0f0f0"/>
  <text x="50%" y="50%" font-family="Arial" font-size="24" fill="#666" text-anchor="middle" dominant-baseline="middle">$($placeholder.text)</text>
  <text x="50%" y="60%" font-family="Arial" font-size="14" fill="#999" text-anchor="middle" dominant-baseline="middle">Placeholder Image</text>
</svg>
"@
        
        $svgContent | Out-File -FilePath ($outputPath -replace '\.(jpg|png)$', '.svg') -Encoding UTF8
        Write-Host " [CREATED SVG]" -ForegroundColor Cyan
    }
}

Write-Host ""
Write-Host "==========================================" -ForegroundColor Green
Write-Host "All done! You can now open index.html in your browser." -ForegroundColor Green
Write-Host ""
