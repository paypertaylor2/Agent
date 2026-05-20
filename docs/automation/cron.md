# Cron Jobs

Schedule recurring tasks with Hermes.

## Setting Up a Cron Job

```bash
hermes cron add
```

Or create a file in `~/.hermes/cron/`:

```yaml
# ~/.hermes/cron/daily-timeline.yaml
name: Daily Timeline Summary
schedule: "0 9 * * *"  # Every day at 9 AM
prompt: >
  Get my timeline from the last 24 hours, summarize the top posts,
  and send me the summary.
```

## Cron Expression Format

```
┌───────────── minute (0-59)
│ ┌───────────── hour (0-23)
│ │ ┌───────────── day of month (1-31)
│ │ │ ┌───────────── month (1-12)
│ │ │ │ ┌───────────── day of week (0-6, Sunday=0)
│ │ │ │ │
* * * * *
```

## Common Schedules

| Schedule | Expression |
|----------|------------|
| Every hour | `0 * * * *` |
| Every 6 hours | `0 */6 * * *` |
| Daily at 9 AM | `0 9 * * *` |
| Daily at 9 AM & 5 PM | `0 9,17 * * *` |
| Weekdays at 9 AM | `0 9 * * 1-5` |
| Every Monday | `0 9 * * 1` |
| Every 30 minutes | `*/30 * * * *` |

## Managing Cron Jobs

```bash
# List all cron jobs:
hermes cron list

# Remove a job:
hermes cron remove daily-timeline

# Enable/disable:
hermes cron disable daily-timeline
hermes cron enable daily-timeline

# Run manually (for testing):
hermes cron run daily-timeline
```

## Example Jobs

### Daily AI Digest
```yaml
name: AI Daily Digest
schedule: "0 8 * * 1-5"
prompt: >
  Search X for posts about "AI agents" from the last 24 hours.
  Summarize the top 5 most engaging posts.
  Post a digest thread with the summary.
```

### Weekly Engagement Report
```yaml
name: Weekly Engagement
schedule: "0 10 * * 1"
prompt: >
  Get my posts from the last 7 days.
  Analyze engagement (likes, reposts, replies).
  Tell me which post performed best and why.
```

### Mention Monitor
```yaml
name: Mention Monitor
schedule: "0 * * * *"
prompt: >
  Check my mentions from the last hour.
  If there are any questions or important replies, alert me.
  Otherwise, do nothing.
```

### Bookmark Cleanup
```yaml
name: Bookmark Cleanup
schedule: "0 22 * * 0"
prompt: >
  Get my bookmarks from the last 7 days.
  Remove bookmarks that are no longer relevant.
  Summarize what I saved this week.
```

## Tips

- Test prompts manually before scheduling
- Use conservative schedules to avoid rate limits
- Check logs at `~/.hermes/logs/cron.log`
- Disable jobs you're not actively using
