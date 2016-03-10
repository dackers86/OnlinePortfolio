module OnlinePortfolio
  class Config
    class << self

      def database(env = ENV["RACK_ENV"])
        {
          adapter: "postgresql",
          encoding: "utf8",
          reconnect: true,
          database: "online_portfolio_#{env}"        }
      end
    end
  end
end
