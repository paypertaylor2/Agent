# X API Endpoints

X API endpoints accessible through xurl.

## Posts

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/2/tweets` | POST | Create a post |
| `/2/tweets/:id` | DELETE | Delete a post |
| `/2/tweets/:id` | GET | Get a post |
| `/2/users/:id/tweets` | GET | Get user's posts |
| `/2/tweets/search/recent` | GET | Search recent posts |
| `/2/tweets/search/all` | GET | Search all posts (Pro) |

## Users

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/2/users/me` | GET | Get authenticated user |
| `/2/users/by/username/:username` | GET | Get user by username |
| `/2/users/:id` | GET | Get user by ID |
| `/2/users/:id/following` | GET | Get following list |
| `/2/users/:id/followers` | GET | Get followers list |
| `/2/users/:id/following` | POST | Follow a user |
| `/2/users/:id/following/:target_id` | DELETE | Unfollow a user |

## Interactions

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/2/users/:id/liked_tweets` | GET | Get liked posts |
| `/2/users/:id/like` | POST | Like a post |
| `/2/users/:id/like/:tweet_id` | DELETE | Unlike a post |
| `/2/users/:id/retweets` | POST | Repost |
| `/2/users/:id/retweets/:source_id` | DELETE | Remove repost |
| `/2/users/:id/bookmarks` | GET | Get bookmarks |
| `/2/users/:id/bookmarks` | POST | Bookmark |
| `/2/users/:id/bookmarks/:tweet_id` | DELETE | Remove bookmark |

## Timelines

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/2/users/:id/timelines/reverse_chronological` | GET | Home timeline |
| `/2/users/:id/mentions` | GET | Mentions |

## Lists

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/2/lists` | GET | Get user's lists |
| `/2/lists` | POST | Create a list |
| `/2/lists/:id` | GET | Get a list |
| `/2/lists/:id` | DELETE | Delete a list |
| `/2/lists/:id/members` | GET | Get list members |
| `/2/lists/:id/members` | POST | Add member |
| `/2/lists/:id/members/:user_id` | DELETE | Remove member |
| `/2/lists/:id/tweets` | GET | Get list timeline |

## Direct Messages

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/2/dm_events` | GET | Get DM events |
| `/2/dm_conversations/:id/dm_events` | GET | Get conversation |
| `/2/dm_conversations/with/:participant_id/dm_events` | GET | Get DM thread |
| `/2/dm_conversations` | POST | Send DM |

## Media

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/1.1/media/upload.json` | POST | Upload media |
| `/1.1/media/upload.json` | POST (INIT) | Init upload |
| `/1.1/media/upload.json` | POST (APPEND) | Upload chunk |
| `/1.1/media/upload.json` | POST (FINALIZE) | Finalize upload |

## Moderation

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/2/users/:id/muting` | GET | Get muted users |
| `/2/users/:id/muting` | POST | Mute a user |
| `/2/users/:id/muting/:target_id` | DELETE | Unmute a user |
| `/2/users/:id/blocking` | GET | Get blocked users |
| `/2/users/:id/blocking` | POST | Block a user |
| `/2/users/:id/blocking/:target_id` | DELETE | Unblock a user |

## Rate Limits

| Endpoint Group | Free Tier | Basic | Pro |
|---------------|-----------|-------|-----|
| Posts | 1500/mo | 3000/mo | 3000/mo |
| Reads | 10K/mo | 100K/mo | 1M/mo |
| DMs | 1000/mo | 5000/mo | 10K/mo |
| Follows | 400/day | 400/day | 400/day |
