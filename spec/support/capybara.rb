require "capybara/rspec"

Capybara::Webkit.configure(&:allow_unknown_urls)

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.configure do |config|
  config.app = Rack::Builder.parse_file("#{ROOT_DIR}/config.ru").first
  config.server_host = "local.bskyb.com"
  config.server_port = 9887
  config.javascript_driver = :webkit
  config.default_max_wait_time = 5
  config.ignore_hidden_elements = true
end
