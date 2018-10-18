require 'twitter'
require 'dotenv'
Dotenv.load

class Twitter_bot
  attr_accessor nom
  def initialize
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["CONSUMER_KEY"]
      config.consumer_secret     = ENV["CONSUMER_SECRET_KEY"]
      config.access_token        = ENV["ACCESS_TOKEN"]
      config.access_token_secret = ENV["TOKEN_SECRET"]
    end
  end

  def recup_follow (nom)
    p client
    handle = client.user(nom).first
    client.follow(handle)
    return handle
  end

end
