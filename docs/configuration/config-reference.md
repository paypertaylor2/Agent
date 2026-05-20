# Configuration Reference

Complete reference for all Hermes configuration files.

## File Locations

| File | Path | Purpose |
|------|------|---------|
| Main config | `~/.hermes/config.yaml` | Model, provider, gateway settings |
| Auth tokens | `~/.hermes/auth.json` | OAuth tokens (auto-managed) |
| Environment | `~/.hermes/.env` | API keys and secrets |
| Sessions | `~/.hermes/sessions/` | Chat history |
| Logs | `~/.hermes/logs/` | Hermes logs |
| Cron | `~/.hermes/cron/` | Scheduled tasks |

## config.yaml

```yaml
# Model settings
model:
  provider: xai-grok-oauth
  name: grok-4.3
  temperature: 0.7
  max_tokens: 4096

# Agent behavior
agent:
  name: hermes
  system_prompt: "You are a helpful assistant."
  max_history: 50
  tools_enabled: true

# Gateway (messaging)
gateway:
  telegram:
    enabled: false
    bot_token: "${TELEGRAM_BOT_TOKEN}"
  discord:
    enabled: false
    bot_token: "${DISCORD_BOT_TOKEN}"

# Tools
tools:
  xurl:
    enabled: true
    default_app: my-app
  web_search:
    enabled: true
  browser:
    enabled: true
  file_system:
    enabled: true

# Logging
logging:
  level: info
  file: ~/.hermes/logs/hermes.log
```

## .env

```bash
# xAI
XAI_API_KEY=xai-xxxxxxxx

# OpenRouter
OPENROUTER_API_KEY=sk-or-v1-xxxxxxxx

# OpenAI
OPENAI_API_KEY=sk-xxxxxxxx

# Anthropic
ANTHROPIC_API_KEY=sk-ant-xxxxxxxx

# Google
GOOGLE_API_KEY=xxxxxxxx

# Groq
GROQ_API_KEY=gsk_xxxxxxxx

# Telegram
TELEGRAM_BOT_TOKEN=xxxxxxxx

# Discord
DISCORD_BOT_TOKEN=xxxxxxxx
```

## Provider Identifiers

| Provider | config.yaml value |
|----------|-------------------|
| xAI Grok OAuth | `xai-grok-oauth` |
| xAI Direct | `xai` |
| OpenRouter | `openrouter` |
| OpenAI | `openai` |
| Anthropic | `anthropic` |
| Google | `google` |
| Groq | `groq` |
| Mistral | `mistral` |
| Cohere | `cohere` |
| Together | `together` |
| Fireworks | `fireworks` |
| Perplexity | `perplexity` |
| SambaNova | `sambanova` |

## Environment Variables

Hermes reads `.env` files from:
1. `~/.hermes/.env` (global)
2. Project-level `.env` (if running from a project directory)

Use `${VAR_NAME}` syntax in `config.yaml` to reference env vars.

## Edit Config

```bash
# Open in default editor:
hermes config edit

# View current config:
hermes config
```
