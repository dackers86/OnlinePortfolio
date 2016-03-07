module OnlinePortfolio
  module RouteHelpers
    def path_to(relative_path)
      "#{MainApp.application_route}/#{relative_path}"
    end
  end
end
