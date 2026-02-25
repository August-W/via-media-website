# Via Media Website - Configuration Guide

## Overview

This website has been refactored to use CSS custom properties (variables) for easy customization. All major styling options can be changed in one place at the top of `styles.css`.

## Quick Start

1. Open `styles.css`
2. Find the `:root` section at the top (after the font imports)
3. Modify the CSS variables to customize your site
4. Save and refresh your browser

## Configuration Options

### Colors

```css
--primary-red: #8B0000;      /* Main accent color (headers, borders) */
--bright-red: #C41E3A;       /* Bright accent (links, hover states) */
--gold: #D4AF37;             /* Gold accents (borders, highlights) */
--black: #000000;            /* Pure black */
--white: #FFFFFF;            /* Pure white */
--off-white: #F9F9F9;        /* Slightly off-white */
```

**Example:** To change the main theme color from red to blue:
```css
--primary-red: #000080;  /* Navy blue */
```

### Typography - Headers

```css
--header-font-family: 'Kingthings Calligraphica', serif;
--header-font-size-xl: 48px;     /* Hero h1 */
--header-font-size-large: 42px;  /* Page h1 */
--header-font-size-medium: 32px; /* h2 */
--header-font-size-small: 28px;  /* h3 */
--header-font-size-xs: 22px;     /* h4 */
--header-color: var(--primary-red);
--header-font-weight: 700;
```

**Example:** To make all headers larger:
```css
--header-font-size-xl: 56px;
--header-font-size-large: 48px;
--header-font-size-medium: 38px;
--header-font-size-small: 32px;
```

### Typography - Body Text

```css
--body-font-family: 'Kingthings Calligraphica Light', 'Segoe UI', sans-serif;
--body-font-size: 16px;
--body-text-color: #CCCCCC;      /* Light gray */
--body-line-height: 1.6;
```

**Example:** To change text color to darker gray:
```css
--body-text-color: #999999;  /* Medium gray */
```

### Drop Caps

```css
--drop-cap-font-family: 'Neugotische Initialen', 'Old London', serif;
--drop-cap-font-size: 4em;
--drop-cap-color: var(--primary-red);
```

**Example:** To make drop caps larger and gold:
```css
--drop-cap-font-size: 5em;
--drop-cap-color: var(--gold);
```

### Background Texture

```css
--background-texture: url('public/images/backgrounds/black-aged-background-long.png');
--texture-opacity: 0.85;          /* 0.0 = transparent, 1.0 = opaque */
--texture-size: cover;            /* cover, contain, or pixel values */
--texture-position: center;       /* center, top, bottom, etc. */
--texture-repeat: no-repeat;      /* no-repeat, repeat, repeat-x, repeat-y */
```

**Example:** To use a different texture image:
```css
--background-texture: url('public/images/backgrounds/my-custom-texture.png');
```

**Example:** To make texture more transparent:
```css
--texture-opacity: 0.5;  /* 50% visible */
```

### Borders & Spacing

```css
--border-color: var(--gold);
--border-width: 2px;
--border-radius: 10px;
--section-padding: 30px;
```

**Example:** To make borders thicker and more rounded:
```css
--border-width: 4px;
--border-radius: 15px;
```

## Changing Fonts

### Step 1: Add Font Files

Place your font files (`.ttf`, `.otf`, `.woff`, `.woff2`) in:
```
static/public/fonts/
```

### Step 2: Add @font-face Declaration

In `styles.css`, add your font import after the existing ones:

```css
@font-face {
    font-family: 'Your Font Name';
    src: url('public/fonts/your-font-file.ttf') format('truetype');
    font-weight: normal;
    font-style: normal;
}
```

### Step 3: Update CSS Variables

Change the font family variables:

```css
--header-font-family: 'Your Font Name', serif;
--body-font-family: 'Your Font Name', sans-serif;
```

## Page Background Images

Background images are set per page in the HTML files:

```html
<div class="page-bg home-bg">     <!-- Home page -->
<div class="page-bg blog-bg">     <!-- Blog page -->
<div class="page-bg podcasts-bg"> <!-- Podcasts page -->
<div class="page-bg contact-bg">  <!-- Contact page -->
```

To change them, edit `styles.css`:

```css
.home-bg {
    background-image: url('public/images/backgrounds/Francisco.jpg');
}

.blog-bg {
    background-image: url('public/images/backgrounds/Jerome.jpg');
}

.podcasts-bg {
    background-image: url('public/images/backgrounds/wallpaper.png');
}

.contact-bg {
    background-image: url('public/images/backgrounds/Thomas.jpg');
}
```

## Common Customizations

### Make Everything Darker

```css
--body-text-color: #FFFFFF;      /* White text */
--texture-opacity: 0.95;         /* More opaque texture */
```

### Make Everything Lighter

```css
--body-text-color: #333333;      /* Dark gray text */
--texture-opacity: 0.3;          /* Very transparent texture */
```

### Change Theme to Blue & Silver

```css
--primary-red: #003366;          /* Navy blue */
--bright-red: #0066CC;           /* Bright blue */
--gold: #C0C0C0;                 /* Silver */
--header-color: var(--primary-red);
```

### Increase All Font Sizes

```css
--header-font-size-xl: 56px;
--header-font-size-large: 50px;
--header-font-size-medium: 40px;
--header-font-size-small: 34px;
--header-font-size-xs: 26px;
--body-font-size: 18px;
```

## HTML Structure

All HTML files now have clear section comments:

```html
<!-- ========== HEADER / NAVIGATION ========== -->
<!-- ========== MAIN CONTENT ========== -->
<!-- ========== HERO SECTION ========== -->
<!-- ========== FOOTER ========== -->
```

This makes it easy to find and edit specific sections.

## Testing Changes

1. Make your changes to `styles.css`
2. Save the file
3. Refresh your browser (use Ctrl+Shift+R or Cmd+Shift+R for hard refresh)
4. If changes don't appear, clear your browser cache

## Troubleshooting

**Fonts not loading:**
- Check that font files are in `static/public/fonts/`
- Verify the filename matches exactly in @font-face
- Try adding font-display property: `font-display: swap;`

**Colors not changing:**
- Make sure you're editing the `:root` section, not individual selectors
- Check for `!important` flags that might override your changes
- Clear browser cache and do a hard refresh

**Texture not appearing:**
- Verify the image path is correct
- Check that the image file exists
- Try adjusting `--texture-opacity` to make sure it's visible

## Need Help?

All customization happens in one place: the `:root` section of `styles.css`. Start there, and changes will propagate throughout the entire site automatically.

---

**Made with Claude Code** 🤖
