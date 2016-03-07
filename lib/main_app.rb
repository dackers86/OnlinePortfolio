require "base"
require "routes/main_app/home"
module OnlinePortfolio
  class MainApp < OnlinePortfolio::Base

    set :application_route, "#{base_route}"

    use OnlinePortfolio::Routes::MainApp::Home
  end
end
