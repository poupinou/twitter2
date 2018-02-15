require "twitter"
require "dotenv"
Dotenv.load
class SendTweet


	def initialize(string)

		@string = string

	end

	def log_in_twitter

		@client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_API_KEY"]
  config.consumer_secret     = ENV["TWITTER_API_SECRET"]
  config.access_token        = ENV["TWITTER_API_TOKEN"]
  config.access_token_secret = ENV["TWITTER_API_TOKEN_SECRET"]
	end
	end

	def send_tweet

		@client.update(@string)

	end

	def perform

		log_in_twitter
		send_tweet

	end

end