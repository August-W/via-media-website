# Quick Deployment Guide - UPDATED

## ✨ Good News!

Everything you need is now in the `static/` folder! It's completely self-contained.

## File Structure (Self-Contained)

```
static/
├── index.html
├── blog.html (with translucent header!)
├── podcasts.html
├── contact.html
├── styles.css
├── .nojekyll
├── public/
│   ├── images/
│   ├── borders/
│   ├── fonts/
│   └── favicon.png
└── (documentation files)
```

## Test Locally (Recommended First)

```bash
cd Via_Media_Website/static
python -m http.server 8000
```

Then open: **http://localhost:8000**

All images and assets should now display correctly!

## Deploy to GitHub Pages

### Method 1: Root Deployment (Simplest)

1. **Create a new repository** on GitHub (or use existing)

2. **Copy everything from `static/` to your repository root:**
   ```bash
   # On Windows PowerShell
   cd Via_Media_Website/static
   Copy-Item -Path * -Destination C:\path\to\your\repo\ -Recurse

   # On Mac/Linux
   cp -r Via_Media_Website/static/* /path/to/your/repo/
   ```

3. **Commit and push:**
   ```bash
   cd your-repo
   git add .
   git commit -m "Deploy Via Media static site"
   git push origin main
   ```

4. **Enable GitHub Pages:**
   - Go to repository Settings > Pages
   - Source: `main` branch, `/ (root)` folder
   - Save

5. **Your site will be live at:**
   `https://yourusername.github.io/repository-name/`

### Method 2: Keep Static Folder Structure

If you want to keep the `static` folder as-is in your repo:

1. Copy the entire `Via_Media_Website/static/` folder to your repo
2. Push to GitHub
3. In Settings > Pages, select `main` branch and `/static` folder
4. Done!

## That's It!

- ✅ All files are in one folder
- ✅ No need to copy `public` separately anymore
- ✅ Self-contained and portable
- ✅ Works locally and on GitHub Pages
- ✅ Images will display correctly

## Verify Before Deploying

Run the local server and check:
- [ ] Home page loads with background image
- [ ] Logo appears in header
- [ ] Blog page shows translucent header
- [ ] All navigation links work
- [ ] Images display in all sections

## Total Size

Your complete website is now: **~54 MB** (mostly images)

## Custom Domain (Optional)

1. Add a `CNAME` file to the `static/` folder with your domain
2. Update your DNS settings to point to GitHub Pages
3. Enable custom domain in GitHub Pages settings

---

**Your Via Media website is ready to go! 🚀**
