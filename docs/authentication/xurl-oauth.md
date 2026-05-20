# X API OAuth 2.0

Authenticate xurl with the X API using OAuth 2.0.

## Prerequisites

- X developer app with OAuth 2.0 credentials ([setup guide](xurl-app-setup.md))
- xurl installed ([installation guide](../installation/xurl.md))

## Register Your App

```bash
xurl auth apps add my-app \
  --client-id YOUR_CLIENT_ID \
  --client-secret YOUR_CLIENT_SECRET
```

This registers your app's credentials with xurl locally.

## Authenticate

```bash
xurl auth oauth2 --app my-app
```

This opens your browser for the OAuth flow. Authorize the app with your X account.

> **Important:** Always include `--app my-app`. Without it, the token may be saved to the default profile instead of the app holding your client credentials, causing 401 errors on later API calls.

## Link a Specific Username (Optional)

```bash
xurl auth oauth2 --app my-app YOUR_USERNAME
```

## Set Default App

```bash
xurl auth default my-app
```

## Verify

```bash
# Check auth status:
xurl auth status

# Confirm identity:
xurl whoami
```

`xurl whoami` should print your X username.

## Token Storage

Credentials are stored in xurl's config directory (typically `~/.config/xurl/` or `~/.xurl/`).

## Managing Multiple Apps

```bash
# List registered apps:
xurl auth apps list

# Remove an app:
xurl auth apps remove my-app

# Switch default:
xurl auth default other-app
```

## Troubleshooting

| Problem | Solution |
|---------|----------|
| 401 errors | Re-authenticate with `--app my-app` flag |
| Token not found | Run `xurl auth default my-app` |
| Wrong account | Re-authenticate with the correct username |
| "App not found" | Re-register with `xurl auth apps add` |
