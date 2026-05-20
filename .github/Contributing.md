# Contributing

Thanks for your interest in contributing to the Agent documentation.

## How to Contribute

### Reporting Issues

- Use the **Bug Report** template for errors in the documentation
- Use the **Guide Request** template for new documentation ideas
- Search existing issues before creating a new one

### Submitting Changes

1. Fork the repository
2. Create a feature branch: `git checkout -b my-change`
3. Make your changes
4. Test locally (see below)
5. Commit with a clear message
6. Push and open a pull request

### Documentation Standards

- Use clear, concise language
- Include code examples where applicable
- Follow the existing file structure
- Use proper Markdown formatting
- Test all commands before documenting them

### File Structure

- `docs/` — Main documentation
- `examples/` — Example prompts, scripts, and configs

### Testing Locally

To preview the GitHub Pages site locally:

```bash
# Install Jekyll
gem install bundler jekyll

# Add to Gemfile:
# gem "github-pages", group: :jekyll_plugins

bundle install
bundle exec jekyll serve

# Open http://localhost:4000
```

### Style Guide

- Use `inline code` for commands, file paths, and variable names
- Use code blocks with language identifiers
- Use tables for structured data
- Use callout blocks for tips and warnings
- Keep lines under 120 characters

## License

By contributing, you agree that your contributions will be licensed under the MIT License.
