# reddit.rb
A simple wrapper for the Reddit API, written in Ruby


# Installation
```
git clone https://github.com/ezrael-git/reddit.rb.git
```

# Quick Example
```rb
require_relative "reddit.rb"

# establish base instance
reddit = Reddit.new ("API_KEY")
# establish client
client = reddit::Client

# get a subreddit
sub = client.get_subreddit("ruby")

# get top 10 recent posts from the subreddit
posts = sub.get_posts(branch: "new", limit: 10)

# display posts
puts posts

```

# Account
Get account:
```rb
account = client.account
```
Display account details:
```rb
puts account.profile()
```
Change password:
```rb
account.change_password('current', 'new')

# Subreddit
Get subreddit:
```rb
subreddit = client.get_subreddit('name')
```
Create subreddit:
```rb
client.create_subreddit('name')
```

# Posts
Get top post:
```rb
post = subreddit.posts(branch: 'top', limit: 1)
```
Get post title:
```rb
post.title
```



# Contact
If you have any questions, feel free to open a discussion on the project's repository.
You can also DM me on Discord: Azrael#1912
