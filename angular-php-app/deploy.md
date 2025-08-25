# Angular App Deployment Guide

## Prerequisites

- Node.js 18+ installed
- Vercel CLI installed (`npm i -g vercel`)
- Git repository set up

## Deployment Steps

### 1. Build the Application Locally

```bash
npm install
npm run build
```

### 2. Deploy to Vercel

```bash
# Login to Vercel (if not already logged in)
vercel login

# Deploy the application
vercel

# For production deployment
vercel --prod
```

### 3. Alternative: Deploy via Vercel Dashboard

1. Push your code to GitHub
2. Connect your repository to Vercel
3. Vercel will automatically detect it's an Angular app
4. Deploy with the default settings

## Configuration Files

### vercel.json

This file configures the build process and routing for Vercel.

### .vercelignore

This file excludes unnecessary files from deployment.

## Common Issues and Solutions

### Build Errors

- Ensure all dependencies are installed: `npm install`
- Check TypeScript compilation: `npm run build`
- Verify Angular version compatibility

### Routing Issues

- The `vercel.json` includes a catch-all route for Angular routing
- All routes redirect to `index.html` for client-side routing

### Environment Variables

- Add any required environment variables in Vercel dashboard
- Use `environment.ts` for Angular environment configuration

## Troubleshooting

If you encounter deployment errors:

1. Check the build logs in Vercel dashboard
2. Verify the `outputDirectory` in `vercel.json` matches your build output
3. Ensure all required files are not in `.vercelignore`
4. Check for any TypeScript compilation errors locally first

## Support

- Vercel Documentation: https://vercel.com/docs
- Angular Documentation: https://angular.dev
- Vercel Support: https://vercel.com/support
