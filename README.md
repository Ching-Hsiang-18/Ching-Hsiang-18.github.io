# Ching-Hsiang Chan Personal Website

Source for <https://ching-hsiang-18.github.io>.

## Common Updates

- Home page: `_pages/about.md`
- PDF CV: `files/Ching-Hsiang_CV_2026.pdf`
- CV redirect: `_pages/cv.md`
- Publications: `_publications/`
- Header navigation: `_data/navigation.yml`

## Preview Locally

```bash
bundle install
bundle exec jekyll serve
```

Then open <http://127.0.0.1:4000>.

Local preview loads `_plugins/local_webrick_log_filter.rb` to hide harmless WEBrick connection-reset noise when the browser closes a tab or refreshes.
