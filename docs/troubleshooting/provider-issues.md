# Provider Issues

Troubleshooting model provider connectivity.

## xAI / Grok

### "Subscription Required"

**Fix:**
- Verify SuperGrok at [x.ai/grok](https://x.ai/grok)
- Ensure the X account matches the subscription
- Try `hermes auth add xai-oauth` to re-authenticate

### Rate Limits

**Symptoms:** "Rate limit exceeded" errors.

**Fix:**
- SuperGrok has generous limits, but they exist
- Wait 1-2 minutes and retry
- Reduce request frequency in automation

## OpenRouter

### "Invalid API Key"

**Fix:**
```bash
# Verify key format (starts with sk-or-v1-):
echo $OPENROUTER_API_KEY

# Test directly:
curl -H "Authorization: Bearer $OPENROUTER_API_KEY" \
  https://openrouter.ai/api/v1/models
```

### Model Not Available

**Fix:**
- Check [openrouter.ai/models](https://openrouter.ai/models) for available models
- Some models have regional restrictions
- Try a different model: `hermes model`

## OpenAI

### "Insufficient Quota"

**Fix:**
- Check usage at [platform.openai.com/usage](https://platform.openai.com/usage)
- Add payment method if on free tier
- Switch to a cheaper model (gpt-4o-mini)

### "Model Not Found"

**Fix:**
- Model names change; check [platform.openai.com/docs/models](https://platform.openai.com/docs/models)
- Update `~/.hermes/config.yaml` with correct model name

## Anthropic

### "Invalid API Key"

**Fix:**
```bash
# Verify key format (starts with sk-ant-):
echo $ANTHROPIC_API_KEY
```

### "Overloaded"

**Fix:**
- Anthropic occasionally has capacity issues
- Wait a few minutes and retry
- Switch to a different provider temporarily

## Google AI

### "API Key Not Valid"

**Fix:**
- Ensure the key is from [aistudio.google.com](https://aistudio.google.com), not Cloud Console
- Check that the Generative Language API is enabled

### "Quota Exceeded"

**Fix:**
- Free tier has daily limits
- Wait for quota reset (midnight Pacific)
- Upgrade to paid tier

## Groq

### "Compilation Error"

**Fix:**
- Groq uses specific model names (e.g., `llama-3.1-70b-versatile`)
- Check [console.groq.com/docs/models](https://console.groq.com/docs/models)

## General Provider Tips

- Always verify API keys at the source dashboard
- Check provider status pages for outages
- Keep a backup provider configured
- Use `hermes doctor` to diagnose connectivity
- Check logs: `tail -f ~/.hermes/logs/hermes.log`
