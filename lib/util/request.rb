# request.rb
# > back

require "httparty"


class Request
  attr_accessor :auth
  attr_accessor :headers
  attr_accessor :url

  def initialize (auth)
    @auth = auth
    @get = HTTParty.get
    @post = HTTParty.post
    @patch = HTTParty.patch
    @delete = HTTParty.delete
    
    @headers = {
      "Authorization" => "Bearer " + @auth
    }
    @url = "https://oauth.reddit.com/api/v1/" # can be changed
  end


  def get (url)
    return @get(@url + url, :headers => @headers)
  end

  def post (url)
    return @post(@url + url, :headers => @headers)
  end

  def patch (url)
    return @patch(@url + url, :headers => @headers)
  end

  def delete (url)
    return @delete(@url + url, :headers => @headers)
  end




end
