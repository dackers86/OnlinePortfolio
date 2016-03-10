module OnlinePortfolio
  class Config
    class << self

      def database(env = ENV["RACK_ENV"])
        {
          adapter: "postgresql",
          encoding: "utf8",
          reconnect: true,
          database: "online_portfolio_#{env}"
          host: localhost
        }
      end
    end
  end
end
