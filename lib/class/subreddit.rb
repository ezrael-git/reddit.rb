# subreddit.rb
# > back


require("../util/request.rb")
require("post.rb")


class Subreddit

  attr_accessor :name
  attr_accessor :rname
  attr_accessor :raw

  def initialize (auth,name,request,raw)
    # about
    @name = name
    @rname = "r/" + name
    @raw = raw

    # request
    @auth = auth
    @request = request
    @status = request.code
    @headers = request.headers
    @http = Request.new auth
    @url = @http.url + "r/" + name + "/"
    
  end

  # construct an instance automatically from a raw request
  def self.construct (auth,constructor: nil)
    """
    Arguments:
      auth (string) : authorization token
      constructor (request) : a Request object
    ..
    static method
    """
    return Subreddit.new(constructor.body["name"], constructor, constructor.body)
  end

  # get subreddit posts
  def posts (branch: nil, limit: 1)
    """
    Arguments:
      branch (string) : the branch to pull from
      limit (integer) : how many posts to return
    ..
    """
    r = @http.get(@url + "posts/" + branch, @headers, body)
    posts = []
    r.body.each do |post|
      posts.append(Post.construct(post))
    end
    return posts
  end


end
