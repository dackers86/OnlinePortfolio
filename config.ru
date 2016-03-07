$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")

require "bundler"
require "sinatra"
require "app"

run OnlinePortfolio::AuthApp

# require 'sinatra'

# Dir.glob('./app/{helpers,controllers}/*.rb').each { |file| require file }

# map('/') { run HomeController }
