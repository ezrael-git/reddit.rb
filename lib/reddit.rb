# reddit.rb
# > front


require "httparty"
require "json"
require_relative "class/client.rb"



class Reddit
  attr_getter :access_token

  def initialize (client_id= 0, secret_token= 0, access_token: 0)
    # if access token is none, lets get it
    if access_token == 0
      http = HTTParty
      # ok so we now need the access token
      # we do a lil data collecting
      auth = [client_id, secret_token]
      headers = {'User-Agent' => 'MyBot/0.0.1'}
      
      # got the data, lets send a request to get the access token
      r = http.post("https://www.reddit.com/api/v1/access_token",
                    :basic_auth => auth,
                    :headers => headers)
                    
      # now we can convert the response to json, and get our token
      @access_token = r.to_json['access_token']
      
    else
      @access_token = access_token
    end

  end

  def get_client ()
    return Client.new(@access_token)
  end
  



end
