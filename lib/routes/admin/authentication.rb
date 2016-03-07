module OnlinePortfolio
  module Routes
    module Admin
      class Authentication < Base

        attr_accessor :current_user

        get "/" do

          if !session["current_user"].nil? then
            erb :home, locals: { current_user: session["current_user"]  }
          else
            erb :login
          end
        end

        get '/auth/:provider/callback' do
          session["current_user"] = User.from_omniauth(request.env['omniauth.auth'])
          redirect to('/')
        end

        get '/logout' do
          redirect '/'
        end
      end
    end
  end
end
