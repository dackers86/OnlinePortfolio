$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")

require "sinatra"
require "app"
require "bundler"

run OnlinePortfolio::Router.routes

