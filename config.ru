require 'sinatra/base'

Dir.glob('./public/{helpers,controllers}/*.rb').each { |file| require file }

map('/') { run HomeController }
