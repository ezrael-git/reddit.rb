# reddit.rb
A simple wrapper for the Reddit API, written in Ruby


# Installation
```
git clone https://github.com/ezrael-git/reddit.rb.git
```

# Quick Example
```rb
require_relative "reddit.rb"

# get client object
reddit = Reddit.new('CLIENT_ID', 'SECRET_TOKEN')
client = reddit.get_client()


# get a subreddit
sub = client.get_subreddit("ruby")

# get top 10 recent posts from the subreddit
posts = sub.get_posts(branch: "new", limit: 10)

# display all posts' titles
posts.each do |post|
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



# Contribution
This is an open project. You are welcome to contribute.
If you have any questions, feel free to open a discussion on the project's repository.
