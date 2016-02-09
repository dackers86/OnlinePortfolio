# application_controller.rb
class ApplicationController < Sinatra::Base

  set :views, File.expand_path('../../views', __FILE__)

  configure :production, :development do
    enable :logging
  end
end