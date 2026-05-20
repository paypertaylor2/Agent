# X Developer App Setup

Create an X developer app for xurl OAuth 2.0 authentication.

## Step 1: Create a Developer Account

1. Go to [developer.x.com](https://developer.x.com)
2. Sign in with your X account
3. Complete the developer application (select "Hobbyist" → "Making a bot")
4. Wait for approval (usually instant for free tier)

## Step 2: Create a Project and App

1. Go to the [Developer Portal Dashboard](https://developer.x.com/en/portal/dashboard)
2. Click **"Create Project"**
3. Name your project (e.g., "Hermes Agent")
4. Select the use case (e.g., "Making a bot")
5. Add a description
6. Click **"Create App"** within the project

## Step 3: Configure OAuth 2.0

1. In your app settings, find **"User authentication settings"**
2. Click **"Set up"**
3. Set the following:

| Setting | Value |
|---------|-------|
| App permissions | Read and Write |
| Type of App | Native App |
| Callback URI | `http://localhost:8080/callback` |
| Website URL | (any valid URL, e.g. `https://github.com/yourname`) |

4. Click **"Save"**

## Step 4: Get Credentials

1. Go to **"Keys and Tokens"** tab
2. Under **"OAuth 2.0 Client ID and Client Secret"**:
   - Copy the **Client ID**
   - Copy the **Client Secret**
3. Store these securely — you'll need them for `xurl auth apps add`

## Step 5: Register with xurl

```bash
xurl auth apps add my-app \
  --client-id YOUR_CLIENT_ID \
  --client-secret YOUR_CLIENT_SECRET
```

## API Access Tiers

| Tier | Cost | Rate Limits | Access |
|------|------|-------------|--------|
| Free | $0 | Limited | Read + limited write |
| Basic | $100/mo | Higher | Read + write |
| Pro | $5000/mo | High | Full access |

For most personal use with Hermes, the **Free** tier is sufficient.

## Important Notes

- The callback URI **must** be exactly `http://localhost:8080/callback`
- Ensure nothing else is running on port 8080 during OAuth flow
- If you regenerate credentials, re-register with xurl
- Keep your Client Secret private — never commit it to repos
