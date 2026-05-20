# File Locations

Complete map of all files and directories used by Hermes and xurl.

## Hermes Directory Structure

```
~/.hermes/
├── config.yaml          # Main configuration
├── auth.json            # OAuth tokens (auto-managed)
├── .env                 # API keys and secrets
├── sessions/            # Chat history
│   ├── session-1.json
│   ├── session-2.json
│   └── ...
├── logs/                # Log files
│   ├── hermes.log
│   ├── cron.log
│   └── ...
├── cron/                # Scheduled tasks
│   ├── daily-digest.yaml
│   └── ...
├── workflows/           # Workflow definitions
│   ├── research.yaml
│   └── ...
└── skills/              # Custom skills (if any)
    └── ...
```

## xurl Directory Structure

```
~/.config/xurl/          # Linux
~/.xurl/                 # macOS (alternative)
├── apps.json            # Registered apps
├── tokens/              # OAuth tokens
│   ├── my-app.json
│   └── ...
└── config.yaml          # xurl config
```

## Key Files Reference

| File | Purpose | Managed By |
|------|---------|------------|
| `~/.hermes/config.yaml` | Main Hermes config | User / `hermes config edit` |
| `~/.hermes/auth.json` | OAuth tokens | Hermes (auto) |
| `~/.hermes/.env` | API keys | User (manual) |
| `~/.hermes/sessions/` | Chat history | Hermes (auto) |
| `~/.hermes/logs/` | Logs | Hermes (auto) |
| `~/.hermes/cron/` | Cron jobs | User / `hermes cron` |
| `~/.hermes/workflows/` | Workflows | User |
| `~/.config/xurl/apps.json` | Registered X apps | xurl |
| `~/.config/xurl/tokens/` | X API tokens | xurl |

## Viewing Files

```bash
# Hermes config:
cat ~/.hermes/config.yaml

# API keys:
cat ~/.hermes/.env

# Auth tokens:
cat ~/.hermes/auth.json

# xurl apps:
cat ~/.config/xurl/apps.json

# Logs:
tail -f ~/.hermes/logs/hermes.log
```

## Editing Files

```bash
# Edit Hermes config:
hermes config edit

# Edit with specific editor:
EDITOR=nano hermes config edit

# Edit .env:
nano ~/.hermes/.env
```

## Backing Up

```bash
# Full backup:
cp -r ~/.hermes/ ~/.hermes-backup-$(date +%Y%m%d)
cp -r ~/.config/xurl/ ~/.xurl-backup-$(date +%Y%m%d)

# Just auth:
cp ~/.hermes/auth.json ~/.hermes/auth.json.bak
cp ~/.hermes/.env ~/.hermes/.env.bak
```

## Cleaning Up

```bash
# Clear old sessions:
rm ~/.hermes/sessions/*.json

# Clear logs:
> ~/.hermes/logs/hermes.log

# Remove all Hermes data:
rm -rf ~/.hermes/

# Remove all xurl data:
rm -rf ~/.config/xurl/
```
