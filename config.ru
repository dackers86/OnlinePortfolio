require 'sinatra'

get "/" do
  "Hello World!"
end

run Sinatra::Application.run!