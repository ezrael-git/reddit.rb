// request.js
// > back 

const internal = require("./config.js");
const axios = require("axios");

// For requesting from the Reddit API

class Request {

  constructor (kwargs) {
    this.api_key = kwargs["api_key"];
    this.headers = internal.headers;
    this.headers["Authorization"] = "Bearer " + this._api_key;
    this.red_url = internal.url;
  }

  // generate resource url
  gen_url (req) {
    return this.red_url + req
  }

  // send get request
  async get (req) {
    let res = await axios.get(this.red_url + req, {
      headers: this._headers
    })
      .then(function (response) {
        return response;
      })
      .catch(function (error) {
        return error;
      });

    return res.data;
  }

  async delete (req) {
    let res = await axios.delete(this.red_url + req, {
      headers: this._headers
    })
      .then(function (response) {
        return response;
      })
      .catch(function (error) {
        return error;
      });

    return res.data;
  }

  async post (req) {
    let res = await axios.post(this.red_url + req, {
      headers: this._headers
    })
      .then(function (response) {
        return response;
      })
      .catch(function (error) {
        return error;
      });

    return res.data;
  }

  async patch (req) {
    let res = await axios.patch(this.red_url + req, {
      headers: this._headers
    })
      .then(function (response) {
        return response;
      })
      .catch(function (error) {
        return error;
      });

    return res.data;
  }



  
}


module.exports = Request;
