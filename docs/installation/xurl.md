# Installing xurl

xurl is a standalone CLI for the X API. Hermes uses it under the hood when you invoke the `/xurl` skill.

## Install Methods

### Shell Script (No sudo, installs to ~/.local/bin)

```bash
curl -fsSL https://raw.githubusercontent.com/xdevplatform/xurl/main/install.sh | bash
```

After installing, add to PATH if needed:

```bash
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

### Homebrew (macOS)

```bash
brew install --cask xdevplatform/tap/xurl
```

### npm (Requires Node.js)

```bash
npm install -g @xdevplatform/xurl
```

### Go (Requires Go)

```bash
go install github.com/xdevplatform/xurl@latest
```

## Verify Installation

```bash
xurl --help
```

Expected output: Help text showing available commands and flags.

## Updating

```bash
# Shell script:
curl -fsSL https://raw.githubusercontent.com/xdevplatform/xurl/main/install.sh | bash

# Homebrew:
brew upgrade --cask xdevplatform/tap/xurl

# npm:
npm update -g @xdevplatform/xurl

# Go:
go install github.com/xdevplatform/xurl@latest
```

## Troubleshooting Install

| Problem | Solution |
|---------|----------|
| `command not found` | Add install directory to PATH (see above) |
| Permission denied | Use the shell script method (installs to `~/.local/bin`) |
| npm permission errors | Use `npx` or fix npm prefix: `npm config set prefix ~/.local` |
| Go: `go: command not found` | Install Go first: [go.dev/dl](https://go.dev/dl) |
