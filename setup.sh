#!/bin/bash

# Portfolio Website Setup Script
echo "🚀 Setting up Vikas Ramaswamy's Portfolio Website..."

# Set up git if not already done
if [ ! -d ".git" ]; then
    echo "📁 Setting up Git..."
    git init
    git add .
    git commit -m "Initial portfolio website setup"
    echo "✅ Git ready"
else
    echo "📁 Git already set up"
fi

# Make sure image folder exists
echo "🖼️  Setting up image folder..."
mkdir -p assets/images

# Let user know about images
if [ ! -f "assets/images/supply-chain.jpg" ]; then
    echo "⚠️  Don't forget to add your project images to assets/images/"
    echo "   You'll need: supply-chain.jpg, finance.jpg, churn.jpg, stock-analyzer.jpg"
fi

# Make sure this script can be run
chmod +x setup.sh

echo "✅ Portfolio setup complete!"
echo ""
echo "📋 Next steps:"
echo "1. Add your project images to assets/images/"
echo "2. Update contact information in index.html"
echo "3. Customize project descriptions"
echo "4. Deploy to GitHub Pages, Netlify, or Vercel"
echo ""
echo "🌐 To test locally, open index.html in your browser"
echo "📖 See README.md and deploy.md for detailed instructions"