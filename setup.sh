#!/bin/bash

# Portfolio Website Setup Script
echo "🚀 Setting up Vikas Ramaswamy's Portfolio Website..."

# Initialize git repository
if [ ! -d ".git" ]; then
    echo "📁 Initializing Git repository..."
    git init
    git add .
    git commit -m "Initial portfolio website setup"
    echo "✅ Git repository initialized"
else
    echo "📁 Git repository already exists"
fi

# Create placeholder images if they don't exist
echo "🖼️  Creating placeholder images..."
mkdir -p assets/images

# Check if images exist, if not provide instructions
if [ ! -f "assets/images/supply-chain.jpg" ]; then
    echo "⚠️  Please add your project images to assets/images/"
    echo "   Required: supply-chain.jpg, finance.jpg, churn.jpg, stock-analyzer.jpg"
fi

# Make the script executable
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