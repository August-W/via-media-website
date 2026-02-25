# Blog System - Markdown Guide

## Overview

The blog now uses **Markdown files** (`.md`) for posts. Just write your content in markdown, and it's automatically rendered with proper styling!

## How to Add a New Blog Post

### Step 1: Create Your Markdown File

Create a new `.md` file in the `blog-posts/` directory with this format:

```markdown
---
title: Your Post Title Here
date: 2026-03-01
readTime: 5 min read
excerpt: A brief 2-3 sentence summary that appears on the blog listing page.
---

Your first paragraph goes here. This will automatically get a drop cap.

Continue writing your content using standard markdown syntax...

## Your First Heading

More content here...

## Your Second Heading

And so on...
```

**Frontmatter Fields:**
- `title`: The post title (required)
- `date`: Publication date in YYYY-MM-DD format (required for sorting)
- `readTime`: Estimated reading time (e.g., "5 min read")
- `excerpt`: Preview text for blog listing page

### Step 2: Add Filename to blog.html

Open `../blog.html` and find the `markdownFiles` array:

```javascript
const markdownFiles = [
    'your-new-post.md',  // ← Add your new file here at the TOP
    'liturgical-year.md',
    'beauty-theology.md',
    'prayer-book-formation.md'
];
```

**That's it!** Your post is now live.

## Markdown Syntax Supported

### Headers
```markdown
## Main Section Heading
### Subsection Heading
```

### Paragraphs
```markdown
Just write regular text. Leave a blank line between paragraphs.

This is a new paragraph.
```

### Emphasis
```markdown
*italic text* or _italic text_
**bold text** or __bold text__
***bold and italic***
```

### Lists
```markdown
- Bullet point 1
- Bullet point 2
  - Nested bullet

1. Numbered item 1
2. Numbered item 2
```

### Links
```markdown
[Link text](https://example.com)
```

### Quotes
```markdown
> This is a blockquote
> It can span multiple lines
```

### Code
```markdown
Inline `code` in a sentence

```
Block of code
with multiple lines
```
```

## File Structure

```
static/
  blog.html           (Blog listing - add new filenames here)
  blog-post.html      (Individual post viewer - auto-renders markdown)
  blog-posts/
    README.md         (This file)
    your-post.md      (Your markdown posts)
    liturgical-year.md
    beauty-theology.md
    prayer-book-formation.md
```

## Example Full Post

```markdown
---
title: The Anglican Way of Prayer
date: 2026-03-15
readTime: 8 min read
excerpt: Exploring the distinctive approach to prayer found in Anglican spirituality, from the Daily Office to liturgical worship.
---

Prayer in the Anglican tradition is both structured and personal, both ancient and contemporary. It draws from the deep wells of Christian history while remaining accessible to modern believers.

## The Daily Office

The cornerstone of Anglican prayer is the Daily Office—Morning Prayer and Evening Prayer. These services provide a rhythm and structure to our days.

### Morning Prayer

Morning Prayer typically includes:
- Opening sentences and confession
- Psalms
- Scripture readings
- Canticles (songs from Scripture)
- Prayers and collects

### Evening Prayer

Evening Prayer follows a similar structure but focuses on thanksgiving and reflection on the day.

## The Prayer Book Collects

Collects are short, beautifully crafted prayers that follow a specific structure:

1. **Address to God** - Who God is
2. **Acknowledgment** - What God has done
3. **Petition** - What we ask
4. **Purpose** - Why we ask
5. **Conclusion** - Through Jesus Christ

## Conclusion

Anglican prayer teaches us that we don't have to reinvent worship each day. We can pray the prayers of the Church, knowing that millions of others across time and space are praying with us.
```

## Tips

**File Naming:**
- Use lowercase letters
- Use hyphens instead of spaces
- Be descriptive: `prayer-book-formation.md` not `post1.md`

**Excerpt Length:**
- Keep to 2-3 sentences
- Should entice readers to click "Read more"

**Headers:**
- Use `##` for main sections (renders as h2)
- Use `###` for subsections (renders as h3)
- Don't use `#` (reserved for post title)

**Images:**
- Not yet supported in markdown (coming soon)
- For now, use HTML: `<img src="../public/images/my-image.jpg" alt="Description">`

## Configuration

### Posts Per Page

Edit `../blog.html`:
```javascript
const POSTS_PER_PAGE = 10;  // Change to any number
```

### Markdown Styling

All markdown content uses the styles defined in `../styles.css`:
- Headers use `--header-font-family` and header color variables
- Body text uses `--body-text-color`
- First paragraph automatically gets drop cap styling

## Troubleshooting

**Post not showing up:**
1. Check that filename is added to `markdownFiles` array in `blog.html`
2. Verify frontmatter is formatted correctly (must have `---` delimiters)
3. Clear browser cache (Ctrl+Shift+R)

**Markdown not rendering:**
1. Check console for JavaScript errors
2. Verify marked.js loaded (check Network tab)
3. Make sure frontmatter is properly closed with `---`

**Styling looks wrong:**
- Markdown content inherits from `.blog-post` class
- Check that CSS variables are properly configured
- Inspect element to see applied styles

## Testing Locally

For markdown files to load properly, you need to run a local server:

```bash
cd static
python -m http.server 8000
```

Then open: `http://localhost:8000/blog.html`

**Note:** Opening files directly with `file://` protocol may have CORS issues with some browsers.

---

**Happy blogging with Markdown!** ✍️
