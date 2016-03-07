require "./lib/auth_app"

module MySky
  module Recontracting
    class Router
      class << self
        def routes
          Rack::URLMap.new(mappings)
        end

        def mappings
          {
            AuthApp.application_route => AuthApp,
          }
        end
      end
    end
  end
end
