# Angular App Deployment Guide

## Quick Start

### Option 1: Automated Deployment (Recommended)

```powershell
# Run the deployment script
.\deploy.ps1
```

### Option 2: Manual Deployment

```bash
# Install dependencies
npm install

# Build the application
npm run build

# Deploy to Vercel
vercel --prod
```

## Configuration Files

### vercel.json

```json
{
  "version": 2,
  "buildCommand": "npm run build",
  "outputDirectory": "dist/angular-php-app/browser",
  "routes": [
    {
      "src": "/(.*)",
      "dest": "/index.html"
    }
  ]
}
```

### .vercelignore

Excludes unnecessary files from deployment to reduce build time and size.

## Common Deployment Errors & Solutions

### 1. Build Errors

**Error**: `FUNCTION_INVOCATION_FAILED` or `BUILD_ERROR`
**Solution**:

- Check TypeScript compilation locally: `npm run build`
- Ensure all dependencies are installed: `npm install`
- Verify Angular version compatibility

**Error**: `FUNCTION_PAYLOAD_TOO_LARGE`
**Solution**:

- Check `.vercelignore` excludes `node_modules/` and build artifacts
- Optimize bundle size with Angular build optimizations

### 2. Routing Errors

**Error**: `NOT_FOUND` for Angular routes
**Solution**:

- Ensure `vercel.json` has the catch-all route: `"src": "/(.*)", "dest": "/index.html"`
- Verify Angular routing is configured correctly

**Error**: `ROUTER_CANNOT_MATCH`
**Solution**:

- Check Angular route configurations
- Ensure all route paths are valid

### 3. Environment Issues

**Error**: `FUNCTION_INVOCATION_TIMEOUT`
**Solution**:

- Optimize build process
- Check for infinite loops in code
- Reduce bundle size

**Error**: `DEPLOYMENT_BLOCKED`
**Solution**:

- Check Vercel account limits
- Verify project settings in Vercel dashboard

### 4. Platform Errors

**Error**: `INTERNAL_FUNCTION_INVOCATION_FAILED`
**Solution**:

- Contact Vercel support
- Check Vercel status page
- Try redeploying

## Troubleshooting Steps

1. **Local Build Test**

   ```bash
   npm install
   npm run build
   ```

2. **Check Build Output**

   - Verify `dist/angular-php-app/browser/` contains `index.html`
   - Ensure all assets are present

3. **Vercel CLI Debug**

   ```bash
   vercel --debug
   ```

4. **Check Vercel Logs**

   - Visit Vercel dashboard
   - Check deployment logs for specific errors

5. **Environment Variables**
   - Add required environment variables in Vercel dashboard
   - Use `environment.ts` for Angular configuration

## Best Practices

### Performance Optimization

- Enable Angular build optimizations
- Use lazy loading for routes
- Optimize images and assets
- Enable compression

### Security

- Don't commit sensitive data
- Use environment variables for secrets
- Enable HTTPS (automatic with Vercel)

### Monitoring

- Set up Vercel analytics
- Monitor build times
- Check error rates

## Support Resources

- [Vercel Documentation](https://vercel.com/docs)
- [Angular Documentation](https://angular.dev)
- [Vercel Support](https://vercel.com/support)
- [Angular CLI](https://angular.dev/cli)

## Error Code Reference

Based on the Vercel error codes you provided:

- **Function Errors**: 500, 502, 504, 413, 503
- **Deployment Errors**: 403, 404, 410, 402, 503, 303
- **Request Errors**: 400, 405, 414, 416, 431
- **Platform Errors**: Internal 500 series

For specific error codes, refer to the [Vercel Error Documentation](https://vercel.com/docs/errors).
