require "./lib/user"
module OnlinePortfolio
  module Routes
    module Admin
      class Authentication < Base

        attr_accessor :current_user

        get '/auth/twitter/callback' do
          session["current_user"] = User.from_omniauth(request.env['omniauth.auth'])
          redirect '/'
        end

        get '/logout' do
          redirect '/'
        end
      end
    end
  end
end
