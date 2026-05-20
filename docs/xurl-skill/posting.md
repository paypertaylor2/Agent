# Posting

Create and manage posts on X through Hermes.

## Basic Post

```
post "Hello from Hermes"
```

Output:
```
Posted successfully!

- ID: 2047107136023650625
- Text: "Hello from Hermes"
- Link: https://x.com/yourhandle/status/2047107136023650625
```

## Reply to a Post

```
reply to post 2047107136023650625 with "Great insight, thanks for sharing!"
```

## Quote a Post

```
quote post 2047107136023650625 with "This is exactly what I've been thinking"
```

## Delete a Post

```
delete post 2047107136023650625
```

## Post with Media

```
post this image with the caption "Sunset from the office"
```

Supported media:
- Images (PNG, JPG, GIF)
- Video (MP4)
- GIFs

## Thread Posts

```
post a thread:
1/ Starting a thread about AI agents...
2/ First, let's talk about what makes an agent useful...
3/ The key is tool access — giving the agent the right capabilities...
```

## Draft Before Posting

```
draft a post about the new Hermes release
```

Hermes will generate the text without posting. Review and approve before sending.

## Schedule a Post

```
post "Good morning!" at 9:00 AM tomorrow
```

Requires Hermes cron to be configured.

## Post Templates

Create reusable templates:

```
save template "daily-update" as "Day {n} of building with Hermes. Today: {topic}"
post using template daily-update with n=5, topic="xurl integration"
```

## Best Practices

- Review before posting (Hermes can show drafts)
- Use threads for long-form content
- Include relevant hashtags
- Tag relevant accounts with `@`
- Keep posts under 280 characters (or use threads)
