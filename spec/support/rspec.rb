RSpec.configure do |config|
  config.include ShowMeTheCookies, :type => :feature
  config.tty = true
  config.formatter = :documentation
  config.include Rack::Test::Methods # Include mixin
  enable :sessions
end
