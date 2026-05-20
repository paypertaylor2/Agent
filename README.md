# Agent — Hermes + xurl

> The comprehensive guide to running Hermes AI with xurl for X (Twitter) automation from the terminal.

[![GitHub Pages](https://img.shields.io/badge/Live%20Site-GitHub%20Pages-blue)](https://soon)
[![License](https://img.shields.io/badge/license-MIT-green)](LICENSE)

## What This Is

A complete, structured documentation repo covering every aspect of setting up and using [Hermes](https://github.com/NousResearch/hermes-agent) (Nous Research's open-source terminal AI agent) with [xurl](https://github.com/xdevplatform/xurl) (the X API CLI).

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

## Documentation Map

| Section | Description |
|---------|-------------|
| [Prerequisites](docs/prerequisites.md) | System requirements, accounts, subscriptions |
| [Installation](docs/installation/) | Hermes + xurl install for all platforms |
| [Configuration](docs/configuration/) | Setup wizard, providers, models, messaging |
| [Authentication](docs/authentication/) | xAI OAuth + X API OAuth 2.0 |
| [xurl Skill](docs/xurl-skill/) | Full skill reference — post, read, interact, automate |
| [Automation](docs/automation/) | Cron jobs, workflows, recipes |
| [Troubleshooting](docs/troubleshooting/) | Common errors, OAuth issues, FAQ |
| [Reference](docs/reference/) | Commands, flags, API endpoints, file paths |

## Contract Address

```
[CA ]
```

## Tags

`hermes` · `xurl` · `x-api` · `twitter-api` · `ai-agent` · `nous-research` · `grok` · `xai` · `automation` · `oauth2` · `terminal` · `cli`

## Contributing

See [CONTRIBUTING.md](.github/CONTRIBUTING.md). Issues and guide requests welcome.

## License

MIT
