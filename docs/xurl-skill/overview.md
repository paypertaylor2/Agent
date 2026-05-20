# xurl Skill Overview

The xurl skill gives Hermes full access to the X API through natural language.

## How It Works

1. Type `/xurl` in the Hermes chat to load the skill
2. Hermes verifies xurl is installed and authenticated
3. Describe what you want in plain English
4. Hermes translates your request into xurl commands, runs them, and presents results

## Capabilities

| Category | Actions |
|----------|---------|
| **Posting** | Post, reply, quote, delete, post with media |
| **Reading** | Timeline, search, profiles, trends, threads |
| **Interactions** | Like, repost, bookmark, follow, mute, block |
| **Lists** | Create, add, remove, view lists |
| **DMs** | Send, read, delete direct messages |
| **Media** | Upload images, video, GIFs |
| **Advanced** | Batch ops, chaining, automation |

## Example Interactions

```
post "Hello from Hermes"
```
```
get all of my bookmarks
```
```
search for posts about Hermes AI
```
```
look up @elonmusk
```
```
reply to post 2047107136023650625 with "great thread"
```
```
like post 2047107136023650625
```
```
show my latest timeline
```

## Chaining

Because Hermes is an agent, you can chain actions:

```
Search for posts about AI agents, summarize the top 5, and draft a reply to the most popular one.
```

Hermes will:
1. Search X for "AI agents"
2. Analyze and summarize results
3. Draft a contextual reply
4. Ask for confirmation before posting

## Skill Loading

The skill is loaded per-session with `/xurl`. It remains active for the duration of the chat session.

## Requirements

- xurl installed and on PATH
- xurl authenticated with X API (`xurl auth status` should show active)
- Hermes configured with tool access enabled
