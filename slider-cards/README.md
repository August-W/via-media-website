# Slider Cards

This directory contains markdown files for the "Anglican Spiritual Voices" slider on the homepage.

## File Structure

Each markdown file represents one slider card and uses YAML frontmatter to define metadata.

### Frontmatter Fields

- **title**: The main title (e.g., author name and dates)
- **subtitle**: Optional subtitle (e.g., description of the person)
- **type**: Card type - `intro`, `quote`, or `poem`
- **card_number**: The order in the slider (0-9)
- **citation**: Optional citation for quotes/poems
- **poem_title**: Optional title for poems

## Card Types

### 1. Introduction Card (type: intro)
Used for the opening card that introduces the slider series.

Example:
```markdown
---
title: Anglican Spiritual Voices
type: intro
card_number: 0
---

A curated collection of quotes, passages, and poems...
```

### 2. Quote Card (type: quote)
Used for quotes from Anglican figures.

Example:
```markdown
---
title: C.S. Lewis (1898–1963)
subtitle: Layman, author, and lifelong communicant of the Church of England/Church of Ireland
type: quote
card_number: 1
citation: Letters to Malcolm: Chiefly on Prayer (1964)
---

"I find no difficulty in believing that the veil between the worlds..."
```

### 3. Poem Card (type: poem)
Used for poetry. Use `&nbsp;` for indentation in poems.

Example:
```markdown
---
title: George Herbert (1593–1633)
subtitle: Anglican priest, poet, and rector of Bemerton near Salisbury
type: poem
card_number: 5
poem_title: "Love (III)" - Part 1
citation: The Temple (1633)
---

Love bade me welcome: yet my soul drew back,
&nbsp;&nbsp;&nbsp;&nbsp;Guilty of dust and sin.
```

## Adding New Cards

1. Create a new `.md` file with a descriptive name (e.g., `10-new-author.md`)
2. Add frontmatter with all required fields
3. Add the content below the frontmatter
4. Update `index.html` to include the new file in the `markdownFiles` array
5. Update the navigation dots in `index.html` if needed

## File Naming Convention

Files are named with a two-digit prefix followed by a descriptive slug:
- `00-introduction.md`
- `01-cs-lewis-part1.md`
- `02-cs-lewis-part2.md`
- etc.

The prefix helps maintain the correct order in file browsers.
