# OAuth Issues

Troubleshooting OAuth authentication problems.

## xAI OAuth Issues

### Browser Doesn't Open

**Symptoms:** Hermes says "Opening browser" but nothing happens.

**Fix:**
1. Look in the terminal for a URL
2. Copy and paste it into your browser manually
3. Complete the flow — Hermes is listening for the callback

### "Invalid Subscription" Error

**Symptoms:** xAI says your account doesn't have SuperGrok.

**Fix:**
1. Go to [x.ai/grok](https://x.ai/grok)
2. Verify your subscription is active
3. Ensure you're signing in with the correct X account
4. Try again: `hermes auth add xai-oauth`

### Token Refresh Failures

**Symptoms:** Hermes works initially, then starts failing after hours/days.

**Fix:**
```bash
# Force re-authentication:
hermes auth logout xai-oauth
hermes auth add xai-oauth
```

### Port Callback Conflict

**Symptoms:** "Address already in use" or callback never completes.

**Fix:**
```bash
# Find what's using the port:
lsof -i :8080

# Kill it:
kill -9 PID

# Retry auth
```

## X API OAuth Issues

### 401 After Successful Auth

**Symptoms:** `xurl auth status` shows authenticated, but API calls fail.

**Fix:**
```bash
# The token was saved to the wrong profile. Re-auth with --app:
xurl auth oauth2 --app my-app
xurl auth default my-app
```

### "Unauthorized" on Specific Endpoints

**Symptoms:** Some operations work, others don't.

**Fix:**
- Check your X API tier — free tier has limited write access
- Verify app permissions include "Read and Write"
- Some endpoints require elevated access

### OAuth Redirect Mismatch

**Symptoms:** "Redirect URI mismatch" error in browser.

**Fix:**
1. Go to [developer.x.com](https://developer.x.com/en/portal/dashboard)
2. Find your app → User authentication settings
3. Ensure callback URI is exactly: `http://localhost:8080/callback`
4. No trailing slash, no https, no path variations

### Token Expires Quickly

**Symptoms:** Token works for minutes then fails.

**Fix:**
- This usually means the token was saved without the refresh token
- Re-authenticate with the full OAuth flow
- Ensure you're using `--app my-app` flag

### Multiple Accounts Confusion

**Symptoms:** Authenticated as the wrong X account.

**Fix:**
```bash
# Specify the username explicitly:
xurl auth oauth2 --app my-app YOUR_USERNAME

# Verify:
xurl whoami
```

## General OAuth Tips

- Always use `--app my-app` flag with xurl
- Keep your X developer app credentials secure
- Don't share `auth.json` or `.env` files
- If in doubt, re-authenticate from scratch
- Check `~/.hermes/logs/` for detailed error messages
