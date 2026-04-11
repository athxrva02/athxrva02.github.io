# athxrva02.github.io

Personal website for [Atharva Dagaonkar](https://athxrva02.github.io), MSc Computer Science student at TU Delft and AI Engineer Intern at Rabobank.

Built with [Jekyll](https://jekyllrb.com/) and hosted via GitHub Pages.

## Tech stack

- **Jekyll** — static site generator (via `github-pages` gem)
- **Bootstrap 5.3.3** — layout and responsive grid (CDN)
- **Font Awesome 7.0.1** — icons (CDN)
- **Montserrat / Roboto** — fonts (Google Fonts CDN)
- **`css/theme.css`** — all custom styles (single file, no preprocessor)
- **`css/syntax.css`** — code block syntax highlighting (Rouge)

## Project structure

```
_layouts/
  default.html        # single shared layout (navbar, footer)
_config.yml           # site name, URL, markdown/highlighter settings
index.md              # home page (hero, awards, focus areas)
publications/         # research & publications page
teaching/             # courses and thesis supervision
service/              # community service
bio/                  # short bio and career timeline
css/
  theme.css           # custom styles
  syntax.css          # syntax highlighting
assets/               # images and publication PDFs
Gemfile               # Ruby dependencies
```

## Local development

### Prerequisites

**Ruby 3.2–3.x** and Bundler. Apple's built-in Ruby (2.6) is too old. Ruby 4.x breaks gem dependencies — use Ruby 3.4.

On macOS, use Homebrew:

```bash
brew install ruby@3.4
export PATH="/opt/homebrew/opt/ruby@3.4/bin:$PATH"
gem install bundler
ruby -v   # should show 3.4.x
```

### Setup

```bash
make install
```

### Serve locally

```bash
make preview
```

The site is available at `http://localhost:4000`.

### Build (static output)

```bash
make all
```

Output is written to `_site/`.

## Deployment

Deployed automatically by GitHub Pages on every push to `master`.

## Editing content

| Page | File |
|------|------|
| Home (bio, awards, focus areas) | `index.md` |
| Publications | `publications/index.md` + `_data/publications.yml` |
| Teaching | `teaching/index.md` + `_data/teaching.yml` |
| Service | `service/index.md` + `_data/service.yml` |
| Bio / Timeline | `bio/index.md` + `_data/timeline.yml` |
| Navbar / footer | `_layouts/default.html` |
| Styles | `css/theme.css` |
| Site config | `_config.yml` |
