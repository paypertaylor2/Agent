# Prerequisites

Everything needed before starting.

## System Requirements

| Requirement | Minimum |
|-------------|---------|
| OS | macOS 12+ or Linux (x86_64 / ARM64) |
| Terminal | iTerm2, Ghostty, Terminal.app, or any modern terminal |
| RAM | 4GB+ recommended |
| Disk | 500MB free space |
| Network | Stable internet connection |

## Required Accounts

### SuperGrok Subscription
- Sign up at [x.ai/grok](https://x.ai/grok)
- Required for xAI Grok OAuth (the recommended provider)
- Active subscription needed at setup time

### X Developer Account
- Go to [developer.x.com](https://developer.x.com/en/portal/dashboard)
- Create a developer account (free tier works)
- Create an app with OAuth 2.0 credentials
- Set redirect URI to `http://localhost:8080/callback`

## Optional Accounts

### xAI API Key (Fallback)
- Only needed if you hit tier restrictions on OAuth
- Get one at [console.x.ai](https://console.x.ai)
- Set as `XAI_API_KEY` in `~/.hermes/.env`

### Model Provider Keys (Alternatives)
If not using xAI Grok OAuth, you'll need an API key from one of:
- [OpenRouter](https://openrouter.ai) — 100+ models, pay-per-use
- [OpenAI](https://platform.openai.com) — GPT-4, GPT-4o
- [Anthropic](https://console.anthropic.com) — Claude models
- [Google AI](https://aistudio.google.com) — Gemini models
- [Groq](https://console.groq.com) — Fast inference
- [Mistral](https://console.mistral.ai) — Mistral models
- [Cohere](https://dashboard.cohere.com) — Command models
- [Together](https://together.ai) — Open-source models
- [Fireworks](https://fireworks.ai) — Open-source models
- [Perplexity](https://perplexity.ai) — Sonar models
- [SambaNova](https://sambanova.ai) — Fast inference

## Optional Messaging

- **Telegram** — Bot token from [@BotFather](https://t.me/BotFather)
- **Discord** — Bot token from [Discord Developer Portal](https://discord.com/developers/applications)

## Check Your System

```bash
# Check OS
uname -s

# Check architecture
uname -m

# Check available disk space
df -h /

# Check memory
# macOS:
vm_stat | head -5
# Linux:
free -h

# Check if curl is available
curl --version
```
