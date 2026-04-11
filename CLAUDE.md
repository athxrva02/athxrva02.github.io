# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

```bash
make install      # Install gems (requires Ruby 3.2+; gems go to vendor/bundle)
make preview      # Serve locally at http://localhost:4000 with live reload
make all          # Build static output to _site/
```

macOS note: system Ruby (2.6) is too old. Use Homebrew Ruby 3.2+ and add it to `PATH` before `/usr/bin`. Deployment is automatic via GitHub Pages on push to `master`.

## Architecture

Jekyll 4.4 academic personal website with a single shared layout (`_layouts/default.html`). Bootstrap 5.3.3 and Font Awesome 7.0.1 loaded via CDN. All custom styles in `css/theme.css`.

### Content is data-driven

All substantive content lives in `_data/` YAML files — editing pages never requires touching HTML or Liquid templates:

| File | Rendered on |
|------|-------------|
| `_data/publications.yml` | `/publications/` — full list grouped by year |
| `_data/selected_publications.yml` | `/publications/` — highlight cards; references entries by `id` |
| `_data/supervision.yml` | `/people/` — `phd_students`, `postdocs`, `masters` arrays |
| `_data/teaching.yml` | `/teaching/` — institutions with nested course arrays |
| `_data/service.yml` | `/service/` — `intro`, `chairs`, `pc_member` |
| `_data/awards.yml` | home page — `name` + `type` (`award` or `grant`) |
| `_data/timeline.yml` | `/bio/` — career timeline |

**No HTML in `_data/` files.** All fields must be plain text. Icons, links, and badges are injected by templates. For structured links use separate `_name` / `_link` fields.

### Key YAML field conventions

**Publication entry** (`publications.yml`):
```yaml
- id: unique-slug          # referenced by selected_publications.yml
  year: 2025
  label: "SIGMOD'25"       # short venue badge
  title: "..."
  authors: "..."
  venue: "Full venue name"
  pdf: "https://..."
  link: "https://..."      # DOI or project page
  award: "Plain text"      # icon injected by template
```

**Selected publication** (`selected_publications.yml`):
```yaml
- id: unique-slug          # must match an id in publications.yml
  desc: "Short description for the card."
```

**Timeline entry**:
```yaml
- year: "2025–"
  current: true            # marks ongoing positions
  icon: fa-solid fa-cloud  # Font Awesome class
  title: "Role"
  org: "Organization"
  detail: "Optional detail"
```

### Navbar active state

The navbar highlights the current section by comparing `page.url` against nav links in `_layouts/default.html`. When adding a new top-level page, add a nav entry there too.

### Includes

- `_includes/pub-highlight.html` — publication card
- `_includes/student-card.html` — single person card
- `_includes/people-list.html` — flex grid of student cards
