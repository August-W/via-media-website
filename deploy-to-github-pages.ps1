# PowerShell script to prepare the site for GitHub Pages deployment
# Run this from the static folder

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Via Media - GitHub Pages Deployment Prep" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if we're in the static folder
if (!(Test-Path "styles.css")) {
    Write-Host "ERROR: Please run this script from the 'static' folder" -ForegroundColor Red
    exit 1
}

Write-Host "Step 1: Updating asset paths in HTML files..." -ForegroundColor Yellow
$htmlFiles = Get-ChildItem -Filter "*.html"
foreach ($file in $htmlFiles) {
    $content = Get-Content $file.FullName -Raw
    $newContent = $content -replace '\.\./public/', 'public/'
    Set-Content $file.FullName -Value $newContent -NoNewline
    Write-Host "  ✓ Updated $($file.Name)" -ForegroundColor Green
}

Write-Host ""
Write-Host "Step 2: Checking required files..." -ForegroundColor Yellow

$requiredFiles = @(
    "index.html",
    "blog.html",
    "podcasts.html",
    "contact.html",
    "styles.css",
    ".nojekyll"
)

$allFilesPresent = $true
foreach ($file in $requiredFiles) {
    if (Test-Path $file) {
        Write-Host "  ✓ $file found" -ForegroundColor Green
    } else {
        Write-Host "  ✗ $file missing" -ForegroundColor Red
        $allFilesPresent = $false
    }
}

if (!$allFilesPresent) {
    Write-Host ""
    Write-Host "ERROR: Some required files are missing!" -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "Step 3: Checking for public folder..." -ForegroundColor Yellow

if (!(Test-Path "../public")) {
    Write-Host "  ✗ Public folder not found at ../public" -ForegroundColor Red
    Write-Host ""
    Write-Host "Please ensure the 'public' folder exists in the parent directory" -ForegroundColor Yellow
    exit 1
} else {
    Write-Host "  ✓ Public folder found" -ForegroundColor Green
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Preparation Complete! ✓" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "1. Copy this entire 'static' folder to your GitHub repository root" -ForegroundColor White
Write-Host "2. Copy the 'public' folder to your GitHub repository root" -ForegroundColor White
Write-Host "3. Commit and push to GitHub" -ForegroundColor White
Write-Host "4. Enable GitHub Pages in repository Settings > Pages" -ForegroundColor White
Write-Host "5. Select the main branch and root folder" -ForegroundColor White
Write-Host ""
Write-Host "Or use the docs folder method (see DEPLOYMENT.md for details)" -ForegroundColor Cyan
Write-Host ""
Write-Host "To test locally, run: python -m http.server 8000" -ForegroundColor Yellow
Write-Host "Then open: http://localhost:8000" -ForegroundColor Yellow
Write-Host ""
