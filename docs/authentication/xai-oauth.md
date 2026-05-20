# xAI Grok OAuth

Connect Hermes to xAI using OAuth (recommended method).

## Prerequisites

- Active [SuperGrok subscription](https://x.ai/grok)
- X account tied to the subscription
- Browser available for OAuth flow

## Setup

### During Hermes Setup Wizard

1. Run `hermes setup`
2. Select **xAI Grok OAuth (SuperGrok Subscription)**
3. Hermes opens your browser to `https://accounts.x.ai`
4. Sign in with the X account tied to SuperGrok
5. Approve the requested permissions
6. Hermes receives tokens via local callback

### Manual OAuth Login

```bash
hermes auth add xai-oauth
```

This triggers the same browser flow.

## How It Works

1. Hermes starts a local server on a random port
2. Opens browser to xAI OAuth page
3. After approval, xAI redirects to `http://localhost:PORT/callback`
4. Hermes exchanges the code for access + refresh tokens
5. Tokens stored in `~/.hermes/auth.json`
6. Refresh happens automatically in the background

## Token Storage

```json
// ~/.hermes/auth.json
{
  "xai-oauth": {
    "access_token": "...",
    "refresh_token": "...",
    "expires_at": "2026-05-20T12:00:00Z"
  }
}
```

## Managing Credentials

```bash
# View stored credentials:
hermes auth list

# Remove OAuth credentials:
hermes auth logout xai-oauth

# Re-authenticate:
hermes auth add xai-oauth
```

## Troubleshooting

| Problem | Solution |
|---------|----------|
| Browser doesn't open | Open the URL manually from the terminal output |
| "Invalid subscription" | Ensure SuperGrok is active on the X account |
| Token expired | Run `hermes auth add xai-oauth` to re-authenticate |
| Port conflict | Close other apps using the callback port |
