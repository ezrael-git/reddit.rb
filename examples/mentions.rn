require "./lib/reddit.rb"



client = Reddit.new("client_id", "secret_token").get_client()

client.on ("mention") do |comment|
  comment.reply "Hello, #{comment.author}!"
end
