# Common Errors

Solutions to the most frequently encountered problems.

## `xurl: command not found`

**Cause:** xurl is not on your PATH.

**Fix:**
```bash
# Check where xurl is installed:
find / -name xurl -type f 2>/dev/null

# Add to PATH (zsh):
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc

# Add to PATH (bash):
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

## `hermes: command not found`

**Cause:** Hermes binary not on PATH.

**Fix:**
```bash
# Re-run the installer:
curl -fsSL https://raw.githubusercontent.com/NousResearch/hermes-agent/main/scripts/install.sh | bash

# Or check the install location:
find / -name hermes -type f 2>/dev/null
```

## 401 Unauthorized

**Cause:** xurl token expired or wrong app.

**Fix:**
```bash
# Re-authenticate with the correct app:
xurl auth oauth2 --app my-app
xurl auth default my-app

# Verify:
xurl auth status
xurl whoami
```

## OAuth Flow Doesn't Complete

**Cause:** Wrong redirect URI or port conflict.

**Fix:**
1. Verify the redirect URI in your X developer app is exactly `http://localhost:8080/callback`
2. Ensure nothing else is running on port 8080:
   ```bash
   lsof -i :8080
   ```
3. Kill any process on port 8080 and retry

## Rate Limit Exceeded

**Cause:** Too many API calls in a short period.

**Fix:**
- Wait 15 minutes and retry
- Reduce frequency of automated tasks
- Check your X API tier limits
- Use `xurl rate-limit status` to see current usage

## Model Provider Errors

**Cause:** Invalid API key or provider issue.

**Fix:**
```bash
# Check your API key:
cat ~/.hermes/.env | grep YOUR_PROVIDER

# Test the key directly:
curl -H "Authorization: Bearer YOUR_KEY" https://api.provider.com/v1/models

# Switch to a different provider:
hermes model
```

## Hermes Won't Start

**Cause:** Corrupted config or missing dependencies.

**Fix:**
```bash
# Run diagnostics:
hermes doctor

# Reset config:
mv ~/.hermes/config.yaml ~/.hermes/config.yaml.bak
hermes setup

# Check logs:
tail -50 ~/.hermes/logs/hermes.log
```

## xurl Auth Status Shows No Active Session

**Cause:** Token expired or was never saved correctly.

**Fix:**
```bash
# Re-authenticate:
xurl auth oauth2 --app my-app
xurl auth default my-app

# Verify:
xurl auth status
```

## API Key Has Non-ASCII Characters

**Cause:** Copying from PDFs or rich-text editors introduces invisible characters.

**Fix:**
- Re-copy the key directly from the provider's dashboard
- Hermes will warn and auto-strip bad characters
- If auth still fails, manually type the key

## Posts Not Appearing

**Cause:** Post was created but may be filtered or rate-limited.

**Fix:**
```bash
# Check if the post exists:
xurl post show POST_ID

# Check your account status:
xurl whoami
```
