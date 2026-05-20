# Advanced Usage

Power-user techniques for Hermes + xurl.

## Chaining Actions

Hermes can chain multiple actions in a single request:

```
Search for posts about AI agents, summarize the top 5, and draft a reply to the most popular one.
```

```
Get my bookmarks from this week, categorize them by topic, and create a summary thread.
```

```
Find the most liked post from @nousresearch this month, quote it with my thoughts, and bookmark it.
```

## Batch Operations

```
Like all posts in my timeline from the last hour
```

```
Bookmark all posts about "Hermes AI" from my mentions
```

```
Follow everyone who reposted post 2047107136023650625
```

## Conditional Logic

```
If there are new posts about Hermes in my mentions, summarize them. Otherwise, show my timeline.
```

```
Check if @username has posted in the last 24 hours. If so, show their latest post.
```

## Monitoring

```
Monitor my mentions every hour and alert me if someone asks a question
```

```
Track posts about "AI agents" and save them to a list
```

## Content Pipelines

```
Every morning, search for posts about AI, summarize the top 10, and post a "daily digest" thread
```

```
When someone mentions Hermes, draft a friendly reply and ask me to approve it
```

## Data Extraction

```
Get all posts from @username this month and export them as a summary
```

```
Analyze the engagement on my last 10 posts and tell me which performed best
```

```
Extract all links from my bookmarks this week
```

## Multi-Account Workflows

If you have multiple xurl apps registered:

```
Post "Hello" from my personal account
```

```
Search for "AI news" using my research account
```

## Automation with Cron

Combine with Hermes cron for scheduled tasks:

```bash
# In ~/.hermes/cron/daily-digest.yaml
schedule: "0 9 * * *"
prompt: "Search for posts about AI agents from the last 24 hours, summarize the top 5, and post a digest thread"
```

## Rate Limits

Be aware of X API rate limits:

| Action | Limit |
|--------|-------|
| Posts | 2400/day |
| Likes | 1000/day |
| Follows | 400/day |
| DMs | 1000/day |

Hermes will warn you when approaching limits.

## Custom Workflows

Create reusable workflow files:

```yaml
# ~/.hermes/workflows/morning-routine.yaml
name: Morning Routine
steps:
  - action: get_timeline
    count: 20
  - action: search
    query: "AI agents"
    since: "24h"
  - action: summarize
  - action: post_thread
```

Run with:
```
run my morning routine
```
