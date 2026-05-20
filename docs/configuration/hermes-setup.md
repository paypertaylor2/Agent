# Hermes Setup Wizard

The setup wizard runs automatically on first launch. Re-run anytime with:

```bash
hermes setup
```

## Setup Mode

```
How would you like to set up Hermes?

 → (●) Quick setup — provider, model & messaging (recommended)
   (○) Full setup — configure everything
```

**Quick setup** covers the essentials. Pick this unless you want to tune every setting.

## Select a Provider

Hermes supports many inference providers. For X integration, **xAI Grok OAuth** is recommended:

```
Select provider:
   (○) OpenRouter (100+ models, pay-per-use)
   (○) OpenAI (GPT-4, GPT-4o)
   (○) Anthropic (Claude)
   (○) Google (Gemini)
   (○) Groq (fast inference)
   ...
 → (●) xAI Grok OAuth (SuperGrok Subscription)
   (○) xAI (direct API key – legacy)
   ...
```

### xAI Grok OAuth

When selected, Hermes opens your browser to `https://accounts.x.ai`. Sign in with the X account tied to your SuperGrok subscription and approve permissions. Hermes receives tokens via a local callback and stores them in `~/.hermes/auth.json`. Tokens auto-refresh in the background.

### xAI API Key (Legacy)

If you don't have SuperGrok, select "xAI (direct API key)" and paste your key from [console.x.ai](https://console.x.ai).

### Other Providers

Select any provider and enter the API key when prompted.

## Select a Model

Hermes fetches available models from the provider:

```
Select default model:
 → grok-4.3
   grok-4.1
   grok-3
   ...
```

Choose any model. Change later with `hermes setup model`.

## Messaging (Optional)

```
Connect a messaging platform? (Telegram, Discord, etc.)

   (○) Set up messaging now (recommended)
 → (●) Skip — set up later with 'hermes setup gateway'
```

For Telegram/Discord bot access, set up now. Otherwise skip — you can always return with `hermes setup gateway`.

## Setup Complete

```
✓ Setup complete! You're ready to go.

    Configure all settings:    hermes setup
    Connect Telegram/Discord:  hermes setup gateway
    Switch model/provider:     hermes model
```

A tool availability report shows which tool categories are active.
