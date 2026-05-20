# Token Management

Managing OAuth tokens, API keys, and credentials.

## Token Locations

| Token Type | File | Managed By |
|------------|------|------------|
| xAI OAuth | `~/.hermes/auth.json` | Hermes (auto-refresh) |
| xurl OAuth | `~/.config/xurl/` or `~/.xurl/` | xurl |
| API keys | `~/.hermes/.env` | Manual |

## xAI Tokens

### Auto-Refresh

Hermes automatically refreshes xAI OAuth tokens in the background. No manual intervention needed under normal circumstances.

### Manual Refresh

```bash
hermes auth add xai-oauth
```

### View Tokens

```bash
hermes auth list
```

### Remove Tokens

```bash
hermes auth logout xai-oauth
```

## xurl Tokens

### Re-authenticate

```bash
xurl auth oauth2 --app my-app
xurl auth default my-app
```

### Check Status

```bash
xurl auth status
xurl whoami
```

### Remove Tokens

Delete the token file in xurl's config directory, or re-authenticate to overwrite.

## API Keys

API keys in `~/.hermes/.env` don't auto-refresh. If a key expires:

1. Get a new key from the provider's dashboard
2. Update `~/.hermes/.env`
3. Restart Hermes

## Backup

```bash
# Backup all Hermes config and auth:
cp -r ~/.hermes/ ~/.hermes-backup-$(date +%Y%m%d)

# Backup just auth:
cp ~/.hermes/auth.json ~/.hermes/auth.json.bak
cp ~/.hermes/.env ~/.hermes/.env.bak
```

## Security Best Practices

- Never commit `auth.json` or `.env` to version control
- Use `~/.hermes/.env` for secrets (not `config.yaml`)
- Rotate API keys periodically
- Use the minimum required OAuth scopes
- Revoke tokens when no longer needed

## Revoking Access

### xAI
1. Go to [accounts.x.ai](https://accounts.x.ai)
2. Find authorized apps
3. Revoke Hermes

### X API
1. Go to [x.com/settings/apps](https://x.com/settings/apps)
2. Find your app
3. Revoke access
