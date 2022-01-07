require "./lib/reddit.rb"



client = Reddit.new("client_id", "secret_token").get_client()
user = client.get_user("Snoo25192")

user.pm "hey!"
