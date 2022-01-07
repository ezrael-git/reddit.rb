require "./lib/reddit.rb"



client = Reddit.new("client_id", "secret_token").get_client()
subreddit = client.get_subreddit("aww")
subreddit.post("Look at my cute dog!", "url")

