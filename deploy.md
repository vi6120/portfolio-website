# Deployment Guide

## 🚀 Quick Deployment Options

### 1. GitHub Pages (Recommended - Free)

#### Step 1: Create GitHub Repository
```bash
# Initialize git repository
git init
git add .
git commit -m "Initial portfolio commit"

# Create repository on GitHub and push
git remote add origin https://github.com/yourusername/portfolio-website.git
git branch -M main
git push -u origin main
```

#### Step 2: Enable GitHub Pages
1. Go to repository **Settings**
2. Scroll to **Pages** section
3. Select **Source**: Deploy from a branch
4. Choose **Branch**: main
5. Click **Save**

Your site will be available at: `https://yourusername.github.io/portfolio-website/`

### 2. Netlify (Free with Custom Domain)

#### Option A: Git Integration
1. Push code to GitHub
2. Go to [netlify.com](https://netlify.com)
3. Click **New site from Git**
4. Connect GitHub and select repository
5. Deploy settings:
   - Build command: (leave empty)
   - Publish directory: (leave empty or `/`)
6. Click **Deploy site**

#### Option B: Drag & Drop
1. Zip your portfolio folder
2. Go to [netlify.com](https://netlify.com)
3. Drag zip file to deploy area
4. Site deployed instantly

### 3. Vercel (Free)

1. Push code to GitHub
2. Go to [vercel.com](https://vercel.com)
3. Click **New Project**
4. Import from GitHub
5. Configure:
   - Framework Preset: Other
   - Build Command: (leave empty)
   - Output Directory: (leave empty)
6. Click **Deploy**

### 4. Firebase Hosting (Free)

```bash
# Install Firebase CLI
npm install -g firebase-tools

# Login and initialize
firebase login
firebase init hosting

# Deploy
firebase deploy
```

## 🔧 Pre-Deployment Checklist

### Content Updates
- [ ] Update personal information in `index.html`
- [ ] Replace placeholder email with real email
- [ ] Update GitHub and LinkedIn URLs
- [ ] Add real project images to `assets/images/`
- [ ] Verify all project links work

### Technical Optimization
- [ ] Compress images (use tools like TinyPNG)
- [ ] Test responsive design on mobile
- [ ] Validate HTML (use W3C validator)
- [ ] Test loading speed
- [ ] Check cross-browser compatibility

### SEO Optimization
- [ ] Add meta description
- [ ] Include relevant keywords
- [ ] Add Open Graph tags for social sharing
- [ ] Create favicon
- [ ] Add structured data markup

## 📱 Mobile Optimization

The portfolio is already mobile-responsive, but verify:
- Text is readable on small screens
- Images scale properly
- Navigation works on touch devices
- Loading speed is acceptable on mobile

## 🔍 SEO Enhancements

Add to `<head>` section in `index.html`:

```html
<!-- SEO Meta Tags -->
<meta name="description" content="Vikas Ramaswamy - Data Analyst Portfolio. Python, Machine Learning, Streamlit dashboards, and analytics projects.">
<meta name="keywords" content="data analyst, python, machine learning, streamlit, portfolio, analytics">
<meta name="author" content="Vikas Ramaswamy">

<!-- Open Graph Tags -->
<meta property="og:title" content="Vikas Ramaswamy | Data Analyst Portfolio">
<meta property="og:description" content="Professional data analyst showcasing Python, ML, and analytics projects">
<meta property="og:type" content="website">
<meta property="og:url" content="https://yourusername.github.io/portfolio-website/">
<meta property="og:image" content="https://yourusername.github.io/portfolio-website/images/portfolio-preview.jpg">

<!-- Twitter Card Tags -->
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="Vikas Ramaswamy | Data Analyst Portfolio">
<meta name="twitter:description" content="Professional data analyst showcasing Python, ML, and analytics projects">
<meta name="twitter:image" content="https://yourusername.github.io/portfolio-website/images/portfolio-preview.jpg">
```

## 📊 Analytics Setup

### Google Analytics 4
1. Create GA4 property at [analytics.google.com](https://analytics.google.com)
2. Get Measurement ID (G-XXXXXXXXXX)
3. Add tracking code to `<head>`:

```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
```

## 🌐 Custom Domain Setup

### For GitHub Pages
1. Buy domain from registrar (Namecheap, GoDaddy, etc.)
2. Add `CNAME` file to repository root with your domain
3. Configure DNS:
   - Add CNAME record: `www` → `yourusername.github.io`
   - Add A records for apex domain:
     - `185.199.108.153`
     - `185.199.109.153`
     - `185.199.110.153`
     - `185.199.111.153`

### For Netlify
1. Go to Site settings → Domain management
2. Add custom domain
3. Configure DNS as instructed by Netlify
4. SSL certificate auto-generated

## 🔒 Security Headers

Add `_headers` file for Netlify:
```
/*
  X-Frame-Options: DENY
  X-XSS-Protection: 1; mode=block
  X-Content-Type-Options: nosniff
  Referrer-Policy: strict-origin-when-cross-origin
```

## 📈 Performance Monitoring

### Tools to Use
- Google PageSpeed Insights
- GTmetrix
- WebPageTest
- Lighthouse (built into Chrome DevTools)

### Optimization Tips
- Compress images (WebP format recommended)
- Minify CSS and JavaScript
- Enable gzip compression
- Use CDN for assets
- Optimize font loading

## 🚨 Troubleshooting

### Common Issues

**Images not loading:**
- Check file paths are correct
- Ensure images are in `assets/images/` folder
- Verify image file extensions match HTML

**CSS not applying:**
- Check CSS file path in HTML
- Clear browser cache
- Validate CSS syntax

**Mobile layout broken:**
- Test responsive breakpoints
- Check viewport meta tag
- Verify CSS media queries

**Slow loading:**
- Compress images
- Minimize HTTP requests
- Use browser caching

## 📞 Support

If you encounter issues:
1. Check browser developer console for errors
2. Validate HTML and CSS
3. Test in different browsers
4. Check deployment platform documentation

---

**Happy Deploying! 🎉**