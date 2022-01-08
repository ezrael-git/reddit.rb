// reddit.rb
// > front
const axios = require("axios");

const Client = require("./class/client.js");



class Reddit {
  constructor (client=0, secret=0, token=0) {
    // if access token is none, lets get it
    if (token == 0) {
      let ax = axios;
      
      // ok so now we need the access token, lets do a lil bit of data collecting
      let auth = {
        username: client,
        password: secret
      };
      let headers = {'User-Agent' : 'MyBot/0.0.1'};
      let options = {
        auth: auth,
        headers: headers
      };
      
      // we can now send a request to the reddit API to get the access token
      let r = ax.post("https://www.reddit.com/api/v1/access_token", options);
      
      // got the response, now lets parse it and get our token
      this.token = JSON.parse(r.body)["access_token"];
      
    } else {
      this.token = token;
    }
  }
  
  get_client () {
    return new Client(this.token};
  }
}
