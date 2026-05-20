# Verifying Installation

Confirm both Hermes and xurl are installed and working.

## Check Hermes

```bash
hermes --version
```

Should print the version number.

## Check xurl

```bash
xurl --help
```

Should print help text with available commands.

## Check PATH

Both binaries must be on your PATH:

```bash
which hermes
which xurl
```

If either returns nothing, add the install directory to your shell config:

```bash
# For zsh (macOS default)
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc

# For bash
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

## Full System Check

Run Hermes' built-in diagnostics:

```bash
hermes doctor
```

This checks:
- Hermes binary and version
- Config directory (`~/.hermes/`)
- Auth tokens
- Tool availability
- Provider connectivity

## Test xurl Connectivity

Before authenticating, verify xurl can reach the X API:

```bash
xurl --version
```

## Next Steps

Once both are verified:
1. [Run the Hermes setup wizard](../configuration/hermes-setup.md)
2. [Authenticate xurl with the X API](../authentication/xurl-oauth.md)
