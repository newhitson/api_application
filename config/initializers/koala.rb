# In Rails, you could put this in config/initializers/koala.rb
Koala.configure do |config|
  config.app_id = "2151134545214460"
  config.app_secret = "a95f9bef6db70f08d5f6c40198da74fb"
  # See Koala::Configuration for more options, including details on how to send requests through
  # your own proxy servers.
end
