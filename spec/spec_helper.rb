$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")
ROOT_DIR = "#{__dir__}/..".freeze

ENV["RACK_ENV"] ||= "development"

Bundler.require :test

require "#{ROOT_DIR}/spec/support/capybara.rb"
require "#{ROOT_DIR}/spec/support/rspec.rb"
require "#{ROOT_DIR}/spec/support/omniauth.rb"


