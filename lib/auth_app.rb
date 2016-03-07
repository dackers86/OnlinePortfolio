require "base"
require "routes/admin/authentication"
module OnlinePortfolio
  class AuthApp < OnlinePortfolio::Base

    set :application_route, "#{base_route}authentication"

    use OmniAuth::Builder do
      provider :twitter, '1v5oo6KR4UbVOXtBdX73lopTX', '9I6krCxtTp2WInoLTf3BK8a1F5SOFWfAzyJUXuHSEETdE7U9fS'
    end

    use OnlinePortfolio::Routes::Admin::Authentication
  end
end
