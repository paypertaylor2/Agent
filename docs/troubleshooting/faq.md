# FAQ

Frequently asked questions about Hermes + xurl.

## General

### What is Hermes?

Hermes is an open-source AI agent from [Nous Research](https://nousresearch.com) that runs in your terminal. It can use tools, browse the web, manage files, and interact with APIs — all through natural language.

### What is xurl?

xurl is a standalone CLI for the X (Twitter) API. It handles authentication and provides commands for posting, searching, reading, and managing your X account.

### Do I need both?

Yes. Hermes provides the AI agent interface. xurl provides the X API access. Together, they let you interact with X through natural language in your terminal.

### Is this free?

- **Hermes:** Free and open-source
- **xurl:** Free and open-source
- **xAI Grok OAuth:** Requires SuperGrok subscription (~$16/mo)
- **X API:** Free tier available (limited), Basic ($100/mo), Pro ($5000/mo)
- **Alternative providers:** Varies (many have free tiers)

### Can I use this without SuperGrok?

Yes. Use an alternative provider like OpenRouter, OpenAI, or Anthropic. You still need xurl authenticated with the X API for X operations.

## Setup

### Which provider should I choose?

- **Best for X integration:** xAI Grok OAuth (SuperGrok)
- **Best free option:** Groq or Google AI
- **Best model variety:** OpenRouter
- **Best quality:** xAI Grok, Claude Opus, or GPT-4

### Can I switch providers later?

Yes. Run `hermes model` anytime to switch.

### Do I need a developer account for X?

Yes, for xurl OAuth. Create one at [developer.x.com](https://developer.x.com). The free tier is sufficient for personal use.

## Usage

### What can I do with the xurl skill?

- Post, reply, quote, delete posts
- Search X for any topic
- Read your timeline, mentions, bookmarks
- Like, repost, bookmark, follow
- Manage lists
- Send DMs
- Post images, video, GIFs
- Automate any of the above

### Can Hermes post without my approval?

Hermes will ask for confirmation before posting by default. You can change this in config, but it's not recommended.

### How do I load the xurl skill?

Type `/xurl` in the Hermes chat. It loads for the current session.

### Can I use Hermes on my phone?

Not directly. But you can connect Hermes to Telegram or Discord and use it from your phone through those apps.

## Automation

### How do I schedule a daily post?

Use Hermes cron:
```bash
hermes cron add
```
Or create a YAML file in `~/.hermes/cron/`.

### Can Hermes monitor X for keywords?

Yes. Set up a cron job that searches for your keywords and alerts you.

### What are the rate limits?

X API rate limits depend on your tier:
- **Free:** ~1500 posts/month, limited reads
- **Basic:** Higher limits
- **Pro:** Highest limits

Hermes tracks usage and warns you when approaching limits.

## Troubleshooting

### Hermes says "xurl not found"

Ensure xurl is on your PATH. See [Common Errors](common-errors.md).

### My posts aren't showing up

Check:
1. `xurl whoami` — are you authenticated?
2. X account status — any restrictions?
3. Rate limits — have you hit a cap?

### OAuth keeps failing

See [OAuth Issues](oauth-issues.md) for detailed troubleshooting.

## Privacy

### Does Hermes store my X data?

Hermes stores conversation history locally in `~/.hermes/sessions/`. It doesn't send your data to any third party.

### Is my X API token secure?

Tokens are stored locally in `~/.hermes/auth.json` and `~/.config/xurl/`. They never leave your machine.

### Can I delete my data?

```bash
# Remove all Hermes data:
rm -rf ~/.hermes/

# Remove xurl data:
rm -rf ~/.config/xurl/
```
