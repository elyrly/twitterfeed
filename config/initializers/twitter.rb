  Twitter.configure do |config|
    config.consumer_key        = ENV["CONFIG.CONSUMER_KEY"]
    config.consumer_secret    = ENV["CONFIG.CONSUMER_SECRET"]
    config.oauth_token        = ENV["CONFIG.OAUTH_TOKEN"]
    config.oauth_token_secret = ENV["CONFIG.OAUTH_TOKEN_SECRET"]
  end