# client.rb
# > back

require_relative("../util/request.rb")
require_relative("subreddit.rb")
require_relative("clientuser.rb")
require_relative("user.rb")



class Client

  def initialize (auth)
    @auth = auth
    @http = Request.new auth
  end

  def get_subreddit (name)
    name.sub! 'r/', ''
    name.sub! 'r', ''
    r = @http.get(name)
    return Subreddit.construct(r)
  end

  def get_user (name)
    r = @http.get("name")
    return User.construct(r)
  end
    
  def account ()
    r = @http.get("me")
    return ClientUser.construct(r)
  end

  






end
