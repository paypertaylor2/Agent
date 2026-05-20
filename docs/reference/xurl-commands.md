# xurl Commands

Complete reference for all xurl CLI commands and flags.

## Global Flags

| Flag | Description |
|------|-------------|
| `--app <name>` | Use a specific registered app |
| `--json` | Output raw JSON |
| `--verbose` | Verbose output |
| `--help` | Show help |

## Auth Commands

| Command | Description |
|---------|-------------|
| `xurl auth status` | Show current auth status |
| `xurl auth oauth2 --app <name>` | Authenticate via OAuth 2.0 |
| `xurl auth oauth2 --app <name> <username>` | Auth with specific username |
| `xurl auth default <name>` | Set default app |
| `xurl auth apps list` | List registered apps |
| `xurl auth apps add <name> --client-id <id> --client-secret <secret>` | Register an app |
| `xurl auth apps remove <name>` | Remove a registered app |

## Post Commands

| Command | Description |
|---------|-------------|
| `xurl post "text"` | Create a post |
| `xurl post "text" --media <path>` | Post with media |
| `xurl reply <post_id> "text"` | Reply to a post |
| `xurl quote <post_id> "text"` | Quote a post |
| `xurl delete <post_id>` | Delete a post |
| `xurl post show <post_id>` | Show a post |

## Timeline Commands

| Command | Description |
|---------|-------------|
| `xurl timeline` | Get your timeline |
| `xurl timeline -n 50` | Get last 50 posts |
| `xurl mentions` | Get your mentions |
| `xurl mentions -n 50` | Get last 50 mentions |
| `xurl bookmarks` | Get your bookmarks |
| `xurl bookmarks -n 100` | Get last 100 bookmarks |

## Search Commands

| Command | Description |
|---------|-------------|
| `xurl search "query"` | Search posts |
| `xurl search "query" -n 50` | Search with limit |
| `xurl search "query" --since "24h"` | Search recent |
| `xurl search "query" --from @user` | Search from user |

## User Commands

| Command | Description |
|---------|-------------|
| `xurl whoami` | Show authenticated user |
| `xurl user @username` | Show user profile |
| `xurl user @username --posts` | Show user's posts |
| `xurl follow @username` | Follow a user |
| `xurl unfollow @username` | Unfollow a user |
| `xurl mute @username` | Mute a user |
| `xurl unmute @username` | Unmute a user |
| `xurl block @username` | Block a user |
| `xurl unblock @username` | Unblock a user |

## Interaction Commands

| Command | Description |
|---------|-------------|
| `xurl like <post_id>` | Like a post |
| `xurl unlike <post_id>` | Unlike a post |
| `xurl repost <post_id>` | Repost |
| `xurl unrepost <post_id>` | Remove repost |
| `xurl bookmark <post_id>` | Bookmark a post |
| `xurl unbookmark <post_id>` | Remove bookmark |

## List Commands

| Command | Description |
|---------|-------------|
| `xurl lists` | List your lists |
| `xurl list create <name>` | Create a list |
| `xurl list add <list> @user` | Add user to list |
| `xurl list remove <list> @user` | Remove user from list |
| `xurl list show <list>` | Show list posts |
| `xurl list delete <list>` | Delete a list |

## DM Commands

| Command | Description |
|---------|-------------|
| `xurl dm @username "message"` | Send a DM |
| `xurl dm inbox` | Show DM inbox |
| `xurl dm show <id>` | Show DM conversation |
| `xurl dm delete <id>` | Delete a DM |

## Media Commands

| Command | Description |
|---------|-------------|
| `xurl media upload <path>` | Upload media |
| `xurl media upload <path> --alt "text"` | Upload with alt text |

## Examples

```bash
# Post
xurl post "Hello from xurl"

# Reply
xurl reply 2047107136023650625 "Great post!"

# Search
xurl search "AI agents" -n 20 --since "24h"

# Timeline
xurl timeline -n 50

# Like
xurl like 2047107136023650625

# Bookmark
xurl bookmark 2047107136023650625

# Follow
xurl follow @nousresearch

# DM
xurl dm @username "Hey!"

# Upload media
xurl media upload ./photo.jpg --alt "Screenshot"

# Post with media
xurl post "Check this out" --media ./photo.jpg
```
