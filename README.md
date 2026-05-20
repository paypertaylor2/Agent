![Banner](https://i.ibb.co/pvnV5T0p/dda5de69-bb9f-43eb-8e02-0751314785a3.png)

# Agent — Hermes + xurl Documentation

> The comprehensive guide to running Hermes AI with xurl for X (Twitter) automation from the terminal.

## Overview

This repository contains complete documentation for setting up and using [Hermes](https://github.com/NousResearch/hermes-agent) — an open-source AI agent from Nous Research — together with [xurl](https://github.com/xdevplatform/xurl), a CLI tool for the X API.

With these two tools connected, you can post, search, manage bookmarks, send DMs, automate engagement, and do anything else the X API supports — all through natural language in your terminal.

## Quick Start

```bash
# 1. Install Hermes
curl -fsSL https://raw.githubusercontent.com/NousResearch/hermes-agent/main/scripts/install.sh | bash

# 2. Install xurl
brew install --cask xdevplatform/tap/xurl

# 3. Run Hermes setup
hermes setup

# 4. Authenticate xurl with X
xurl auth apps add my-app --client-id YOUR_ID --client-secret YOUR_SECRET
xurl auth oauth2 --app my-app
xurl auth default my-app

# 5. Launch
hermes
# Type /xurl to load the skill
```

## Repository Structure

```
Agent/
├── README.md                    # This file
├── _config.yml                  # GitHub Pages config
│
├── docs/
│   ├── index.md                 # Documentation landing page
│   ├── prerequisites.md         # System requirements, accounts, subscriptions
│   │
│   ├── installation/
│   │   ├── hermes.md            # Install Hermes (all platforms)
│   │   ├── xurl.md              # Install xurl (all methods)
│   │   └── verify.md            # Verify both are installed
│   │
│   ├── configuration/
│   │   ├── hermes-setup.md      # Setup wizard walkthrough
│   │   ├── providers.md         # All model providers
│   │   ├── models.md            # Model selection guide
│   │   ├── messaging.md         # Telegram/Discord gateway
│   │   └── config-reference.md  # Full config.yaml / .env reference
│   │
│   ├── authentication/
│   │   ├── xai-oauth.md         # xAI Grok OAuth flow
│   │   ├── xurl-oauth.md        # X API OAuth 2.0 setup
│   │   ├── xurl-app-setup.md    # Creating X developer app
│   │   └── token-management.md  # Auth tokens, refresh, backup
│   │
│   ├── xurl-skill/
│   │   ├── overview.md          # What the skill does
│   │   ├── posting.md           # Post, reply, quote, media
│   │   ├── reading.md           # Timeline, search, profiles, trends
│   │   ├── interactions.md      # Like, repost, bookmark, follow
│   │   ├── lists.md             # List management
│   │   ├── dm.md                # Direct messages
│   │   ├── media.md             # Images, video, GIFs
│   │   └── advanced.md          # Chaining, batch ops, automation
│   │
│   ├── automation/
│   │   ├── cron.md              # Scheduled tasks with Hermes
│   │   ├── workflows.md         # Multi-step agent workflows
│   │   └── examples.md          # Real-world automation recipes
│   │
│   ├── troubleshooting/
│   │   ├── common-errors.md     # 401, command not found, etc.
│   │   ├── oauth-issues.md      # OAuth flow failures
│   │   ├── provider-issues.md   # Model provider problems
│   │   └── faq.md               # Frequently asked questions
│   │
│   └── reference/
│       ├── hermes-commands.md   # All /commands
│       ├── xurl-commands.md     # All xurl CLI flags
│       ├── api-endpoints.md     # X API surface reference
│       └── file-locations.md    # ~/.hermes/ directory map
│
├── examples/
│   ├── prompts/
│   │   ├── posting.md           # Example prompts for posting
│   │   ├── research.md          # Search & summarize workflows
│   │   ├── engagement.md        # Like, reply, bookmark prompts
│   │   └── monitoring.md        # Track topics, users, keywords
│   │
│   ├── scripts/
│   │   ├── setup.sh             # One-shot setup script
│   │   ├── backup-auth.sh       # Backup ~/.hermes/
│   │   └── health-check.sh      # Verify everything works
│   │
│   └── configs/
│       ├── config.yaml.example   # Annotated Hermes config
│       └── .env.example          # Template env file
│
│
└── .github/
    ├── workflows/
    │   └── pages.yml            # Auto-deploy to GitHub Pages
    ├── ISSUE_TEMPLATE/
    │   ├── bug-report.md
    │   └── guide-request.md
    └── CONTRIBUTING.md          # How to contribute
```

## Documentation Sections

### 1. Prerequisites
System requirements, required accounts (SuperGrok, X developer), and optional providers.

### 2. Installation
Step-by-step guides for installing Hermes and xurl on macOS and Linux, plus verification steps.

### 3. Configuration
The Hermes setup wizard, model provider selection (12+ providers), model tiers, messaging gateway setup, and full config reference.

### 4. Authentication
xAI Grok OAuth flow, X API OAuth 2.0 setup, creating a developer app, and token management.

### 5. xurl Skill
The core of the documentation — 7 sections covering every xurl capability:
- **Posting** — Create posts, replies, quotes, threads, media
- **Reading** — Timeline, search, profiles, trends, bookmarks
- **Interactions** — Like, repost, bookmark, follow, mute, block
- **Lists** — Create and manage curated lists
- **DMs** — Send and read direct messages
- **Media** — Upload and post images, video, GIFs
- **Advanced** — Chaining, batch operations, monitoring

### 6. Automation
Cron jobs, multi-step workflows, and 8 real-world automation recipes (daily digest, engagement bot, weekly analytics, etc.).

### 7. Troubleshooting
Common errors, OAuth issues, provider problems, and a comprehensive FAQ.

### 8. Reference
Complete command references for Hermes and xurl, X API endpoints, and file location maps.

## Tags

`hermes` · `xurl` · `x-api` · `twitter-api` · `ai-agent` · `nous-research` · `grok` · `xai` · `automation` · `oauth2` · `terminal` · `cli`

## Live Site

This repo deploys to GitHub Pages at [paypertaylor2.github.io/Agent](https://paypertaylor2.github.io/Agent).

## Contributing

See [CONTRIBUTING.md](.github/CONTRIBUTING.md). Bug reports and guide requests are welcome.

## License

MIT

