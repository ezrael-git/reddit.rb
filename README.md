# reddit.rb
A simple wrapper for the Reddit API, written in Ruby


# Installation
```
git clone https://github.com/ezrael-git/reddit.rb.git
```

# Quick Example
```rb
require_relative "reddit.rb"

# establish client
client = Reddit::Client.new("AUTHORIZATION_KEY")

# get a subreddit
sub = client.get_subreddit("ruby")

# get top 10 recent posts from the subreddit
posts = sub.get_posts(branch: "new", limit: 10)

# display all posts' titles
posts.forEach do |post|
  puts post.title
end

```

# Account
Get account:
```rb
account = client.account()
```
Get account username:
```rb
account.username
```
Post a post:
(currently only supports text posts)
```rb
account.post('subreddit', 'title', 'body')
```

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
post = subreddit.get_posts(branch: 'top', limit: 1)
```
Get post body:
(returns URL if it's an image)
```rb
post.body
```



# Contact
If you have any questions, feel free to open a discussion on the project's repository.
You can also DM me on Discord: Azrael#1912
