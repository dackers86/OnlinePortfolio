require "base"
require "routes/admin/authentication"
module OnlinePortfolio
  class AuthApp < OnlinePortfolio::Base

    set :application_route, "#{base_route}/example"

    use OnlinePortfolio::Routes::Admin::Authentication
  end
end
