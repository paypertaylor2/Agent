# Workflows

Multi-step agent workflows for complex X automation.

## What Are Workflows?

Workflows are predefined sequences of actions that Hermes executes automatically. They combine xurl operations with Hermes' reasoning capabilities.

## Creating a Workflow

```yaml
# ~/.hermes/workflows/research-and-engage.yaml
name: Research & Engage
trigger: manual  # or 'cron' for scheduled
steps:
  - name: Search
    action: xurl_search
    params:
      query: "AI agents"
      count: 20
      since: "24h"

  - name: Analyze
    action: summarize
    params:
      focus: "most engaging posts"
      count: 5

  - name: Draft Reply
    action: draft_post
    params:
      target: "top post"
      tone: "thoughtful and engaging"

  - name: Confirm
    action: ask_user
    params:
      message: "Draft ready. Post it?"

  - name: Post
    action: xurl_post
    params:
      confirm: true
```

## Running a Workflow

```bash
# From Hermes chat:
run my research and engage workflow

# From CLI:
hermes workflow run research-and-engage
```

## Built-in Workflow Steps

| Step Type | Description |
|-----------|-------------|
| `xurl_search` | Search X for posts |
| `xurl_timeline` | Get timeline posts |
| `xurl_post` | Create a post |
| `xurl_reply` | Reply to a post |
| `xurl_like` | Like a post |
| `xurl_bookmark` | Bookmark a post |
| `xurl_follow` | Follow a user |
| `summarize` | Summarize results |
| `draft_post` | Draft a post for review |
| `ask_user` | Pause for user confirmation |
| `condition` | Branch based on results |
| `delay` | Wait between steps |

## Conditional Workflows

```yaml
steps:
  - name: Check Mentions
    action: xurl_mentions
    params:
      since: "1h"

  - name: Has Mentions?
    action: condition
    params:
      if: "mentions.count > 0"
      then: "summarize_mentions"
      else: "check_timeline"

  - name: Summarize Mentions
    id: summarize_mentions
    action: summarize

  - name: Check Timeline
    id: check_timeline
    action: xurl_timeline
```

## Workflow Templates

### Content Curation
```
Search → Filter → Summarize → Post Thread
```

### Engagement
```
Get Mentions → Draft Replies → Confirm → Post
```

### Research
```
Search → Extract Links → Summarize → Save to Notes
```

### Monitoring
```
Check Keyword → Alert if New → Summarize → Notify
```

## Sharing Workflows

Export a workflow:
```bash
hermes workflow export research-and-engage > workflow.yaml
```

Import a workflow:
```bash
hermes workflow import workflow.yaml
```
