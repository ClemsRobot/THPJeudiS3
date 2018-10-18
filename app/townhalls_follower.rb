require 'rubygems'
require 'twitter'
require 'dotenv'
Dotenv.load

class Twitters

  def search_user  # Méthode pour les access keys
    client = Twitter::REST::Client.new do |config|
      config.consumer_key = ENV['CONSUM_KEY2']
      config.consumer_secret = ENV['CONSUM_SECRET2']
      config.access_token = ENV['ACCESS_TOKEN2']
      config.access_token_secret = ENV['TOKEN_SECRET2']
    end
  end
      @client
    end

  
