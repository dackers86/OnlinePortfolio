require "sinatra"
require "omniauth"
require "omniauth-twitter"
require "./lib/config"
require "sinatra/activerecord"

module OnlinePortfolio
  class Base < Sinatra::Base

    set :views, File.expand_path('../../views', __FILE__)
    set :public_folder, File.expand_path('../../../public', __FILE__)
    set :base_route, "/"
    
    register Sinatra::ActiveRecordExtension
    # set :database, Config.database

    
    configure :production, :development do
      enable :logging
    end

    use Rack::Session::Cookie, key: "onlineportfolio", secret: "changeme"
  end
end
