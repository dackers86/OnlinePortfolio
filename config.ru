$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")

require "bundler"
require "sinatra"
require "app"

run OnlinePortfolio::Router.routes

