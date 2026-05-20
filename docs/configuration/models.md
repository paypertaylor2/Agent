# Model Selection Guide

How to choose the right model for Hermes.

## Model Tiers

### Flagship Models (Best Quality)

| Model | Provider | Strengths | Cost |
|-------|----------|-----------|------|
| grok-4.3 | xAI | Best for X integration, reasoning | SuperGrok |
| claude-opus-4-7 | Anthropic | Complex reasoning, coding | $$$ |
| gpt-4.1 | OpenAI | General purpose, reliable | $$$ |
| gemini-2.5-pro | Google | Long context, multimodal | $$ |

### Mid-Tier Models (Best Balance)

| Model | Provider | Strengths | Cost |
|-------|----------|-----------|------|
| grok-4.1 | xAI | Fast, good quality | SuperGrok |
| claude-sonnet-4-6 | Anthropic | Great all-rounder | $$ |
| gpt-4o | OpenAI | Fast, capable | $$ |
| gemini-2.5-flash | Google | Very fast, cheap | $ |

### Fast Models (Best Speed)

| Model | Provider | Strengths | Cost |
|-------|----------|-----------|------|
| grok-3 | xAI | Fast responses | SuperGrok |
| claude-haiku-4-5 | Anthropic | Fastest Claude | $ |
| gpt-4o-mini | OpenAI | Cheap, fast | $ |
| llama-4-maverick | Groq/Fireworks | Open-source, fast | $ |

## Choosing for X/xurl Work

For X automation tasks (posting, searching, managing bookmarks):

- **Best:** grok-4.3 or grok-4.1 (native X understanding)
- **Great:** claude-sonnet-4-6 or gpt-4o (strong instruction following)
- **Fast:** grok-3 or claude-haiku-4-5 (quick interactions)

## Switching Models

```bash
# Interactive model picker:
hermes model

# Switch provider + model:
hermes setup model

# Change just the model (same provider):
hermes model --set grok-4.1
```

## Model Configuration

Models are configured in `~/.hermes/config.yaml`:

```yaml
model:
  provider: xai-grok-oauth
  name: grok-4.3
  temperature: 0.7
  max_tokens: 4096
```

## Cost Optimization

- Use Grok OAuth if you have SuperGrok (unlimited usage included)
- Use Groq free tier for fast, free inference
- Use OpenRouter for access to many models with one key
- Set `max_tokens` lower for cheaper responses on simple tasks
