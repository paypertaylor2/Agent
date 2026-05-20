# Model Providers

Hermes supports a wide range of inference providers. This guide covers each one.

## xAI Grok OAuth (Recommended)

**Best for:** X integration, SuperGrok subscribers
**Models:** Grok 4.3, 4.1, 3, etc.
**Auth:** OAuth (browser login, auto-refresh tokens)
**Cost:** Included with SuperGrok subscription

```bash
# Select during setup, or:
hermes model
# → xAI Grok OAuth (SuperGrok Subscription)
```

## xAI Direct API Key (Legacy)

**Best for:** Users without SuperGrok
**Models:** Same as above
**Auth:** API key from [console.x.ai](https://console.x.ai)
**Cost:** Pay-per-use

```bash
# Set key in ~/.hermes/.env:
XAI_API_KEY=xai-xxxxxxxx
```

## OpenRouter

**Best for:** Access to 100+ models with one key
**Models:** Claude, GPT, Llama, Mistral, and many more
**Auth:** API key from [openrouter.ai](https://openrouter.ai)
**Cost:** Pay-per-use, varies by model

```bash
# Set key in ~/.hermes/.env:
OPENROUTER_API_KEY=sk-or-v1-xxxxxxxx
```

## OpenAI

**Best for:** GPT-4, GPT-4o, o-series models
**Auth:** API key from [platform.openai.com](https://platform.openai.com)
**Cost:** Pay-per-use

```bash
OPENAI_API_KEY=sk-xxxxxxxx
```

## Anthropic

**Best for:** Claude models
**Auth:** API key from [console.anthropic.com](https://console.anthropic.com)
**Cost:** Pay-per-use

```bash
ANTHROPIC_API_KEY=sk-ant-xxxxxxxx
```

## Google AI

**Best for:** Gemini models
**Auth:** API key from [aistudio.google.com](https://aistudio.google.com)
**Cost:** Free tier available

```bash
GOOGLE_API_KEY=xxxxxxxx
```

## Groq

**Best for:** Ultra-fast inference
**Models:** Llama, Mixtral, Gemma
**Auth:** API key from [console.groq.com](https://console.groq.com)
**Cost:** Free tier available

```bash
GROQ_API_KEY=gsk_xxxxxxxx
```

## Mistral

**Best for:** Mistral Large, Medium, Small
**Auth:** API key from [console.mistral.ai](https://console.mistral.ai)
**Cost:** Pay-per-use

```bash
MISTRAL_API_KEY=xxxxxxxx
```

## Cohere

**Best for:** Command models
**Auth:** API key from [dashboard.cohere.com](https://dashboard.cohere.com)
**Cost:** Free tier available

```bash
COHERE_API_KEY=xxxxxxxx
```

## Together AI

**Best for:** Open-source models
**Auth:** API key from [together.ai](https://together.ai)
**Cost:** Pay-per-use

```bash
TOGETHER_API_KEY=xxxxxxxx
```

## Fireworks AI

**Best for:** Open-source models, fast inference
**Auth:** API key from [fireworks.ai](https://fireworks.ai)
**Cost:** Pay-per-use

```bash
FIREWORKS_API_KEY=xxxxxxxx
```

## Perplexity

**Best for:** Sonar models with web search
**Auth:** API key from [perplexity.ai](https://perplexity.ai)
**Cost:** Pay-per-use

```bash
PERPLEXITY_API_KEY=pplx-xxxxxxxx
```

## SambaNova

**Best for:** Fast inference, enterprise models
**Auth:** API key from [sambanova.ai](https://sambanova.ai)
**Cost:** Enterprise pricing

```bash
SAMBANOVA_API_KEY=xxxxxxxx
```

## Switching Providers

```bash
# Interactive:
hermes model

# Or edit ~/.hermes/config.yaml directly
```
