# Installing Hermes

## One-Line Installer (Recommended)

```bash
curl -fsSL https://raw.githubusercontent.com/NousResearch/hermes-agent/main/scripts/install.sh | bash
```

This downloads the Hermes binary and places it on your PATH.

## Manual Install

### macOS (Homebrew)

```bash
brew install --cask nousresearch/tap/hermes
```

### Linux

```bash
# Download latest release
curl -fsSL https://github.com/NousResearch/hermes-agent/releases/latest/download/hermes-linux-x64 \
  -o /usr/local/bin/hermes && chmod +x /usr/local/bin/hermes
```

### From Source

```bash
git clone https://github.com/NousResearch/hermes-agent.git
cd hermes-agent
cargo build --release
cp target/release/hermes /usr/local/bin/
```

## Verify Installation

```bash
hermes --version
```

Expected output: `hermes vX.X.X`

## First Launch

```bash
hermes
```

Hermes will detect it's a fresh install and launch the setup wizard automatically. You can re-run the wizard anytime with:

```bash
hermes setup
```

## Updating

```bash
# If installed via the script:
curl -fsSL https://raw.githubusercontent.com/NousResearch/hermes-agent/main/scripts/install.sh | bash

# If installed via Homebrew:
brew upgrade --cask nousresearch/tap/hermes
```

## Uninstalling

```bash
# Remove binary
rm $(which hermes)

# Remove config and data
rm -rf ~/.hermes/
```

## Troubleshooting Install

| Problem | Solution |
|---------|----------|
| `command not found` | Ensure the install directory is on your PATH |
| Permission denied | Run with `sudo` for system-wide install, or install to `~/.local/bin` |
| SSL errors | Update CA certificates: `brew install ca-certificates` (macOS) or `sudo apt install ca-certificates` (Linux) |
