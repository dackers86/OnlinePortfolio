module OnlinePortfolio
  module Routes
    module MainApp
      class Home < Base

        get "/" do
          if !session["current_user"].nil? then
            erb :home, locals: { current_user: session["current_user"]  }
          else
            erb :login
          end
        end
      end
    end
  end
end
