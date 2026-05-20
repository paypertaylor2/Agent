# Messaging Gateway

Connect Hermes to Telegram or Discord for remote access.

## Telegram

### 1. Create a Bot

1. Message [@BotFather](https://t.me/BotFather) on Telegram
2. Send `/newbot`
3. Choose a name and username
4. Copy the bot token

### 2. Configure Hermes

```bash
hermes setup gateway
# Select Telegram
# Paste the bot token
```

Or manually in `~/.hermes/config.yaml`:

```yaml
gateway:
  telegram:
    enabled: true
    bot_token: "YOUR_BOT_TOKEN"
```

### 3. Use

Message your bot on Telegram. Hermes responds in the chat.

## Discord

### 1. Create a Bot

1. Go to [Discord Developer Portal](https://discord.com/developers/applications)
2. Create a new application
3. Go to "Bot" section → "Add Bot"
4. Copy the bot token
5. Under "Privileged Gateway Intents," enable:
   - Message Content Intent
   - Server Members Intent
6. Go to "OAuth2" → "URL Generator"
7. Select scopes: `bot`
8. Select permissions: `Send Messages`, `Read Message History`
9. Use the generated URL to invite the bot to your server

### 2. Configure Hermes

```bash
hermes setup gateway
# Select Discord
# Paste the bot token
```

Or manually in `~/.hermes/config.yaml`:

```yaml
gateway:
  discord:
    enabled: true
    bot_token: "YOUR_BOT_TOKEN"
```

### 3. Use

Mention the bot in any channel it has access to, or DM it directly.

## Multiple Gateways

Hermes can run Telegram and Discord simultaneously:

```yaml
gateway:
  telegram:
    enabled: true
    bot_token: "TELEGRAM_TOKEN"
  discord:
    enabled: true
    bot_token: "DISCORD_TOKEN"
```

## Gateway Commands

Once connected via messaging:

| Command | Action |
|---------|--------|
| `/help` | Show available commands |
| `/xurl` | Load the xurl skill |
| `/status` | Check Hermes status |
| `/model` | View/change model |
| `/reset` | Reset conversation |

## Security

- Never share bot tokens
- Use `~/.hermes/.env` for sensitive values
- Restrict Discord bot permissions to minimum needed
- Consider whitelisting Telegram user IDs
