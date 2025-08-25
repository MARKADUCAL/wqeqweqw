# Angular App Deployment Script for Vercel
# Run this script to deploy your Angular app to Vercel

Write-Host "🚀 Starting Angular App Deployment to Vercel..." -ForegroundColor Green

# Check if Vercel CLI is installed
try {
    $vercelVersion = vercel --version
    Write-Host "✅ Vercel CLI found: $vercelVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Vercel CLI not found. Installing..." -ForegroundColor Yellow
    npm install -g vercel
}

# Install dependencies
Write-Host "📦 Installing dependencies..." -ForegroundColor Blue
npm install

# Build the application
Write-Host "🔨 Building the application..." -ForegroundColor Blue
npm run build

# Check if build was successful
if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ Build completed successfully!" -ForegroundColor Green
    
    # Deploy to Vercel
    Write-Host "🚀 Deploying to Vercel..." -ForegroundColor Blue
    vercel --prod
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "🎉 Deployment completed successfully!" -ForegroundColor Green
        Write-Host "Your app is now live on Vercel!" -ForegroundColor Green
    } else {
        Write-Host "❌ Deployment failed. Check the error messages above." -ForegroundColor Red
    }
} else {
    Write-Host "❌ Build failed. Please fix the errors and try again." -ForegroundColor Red
}

Write-Host "`n📚 For more information, see deploy.md" -ForegroundColor Cyan
