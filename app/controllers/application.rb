require "omniauth"
require "omniauth-twitter"
class ApplicationController < Sinatra::Base

  set :views, File.expand_path('../../views', __FILE__)
  set :public_folder, File.expand_path('../../../public', __FILE__)

  configure :production, :development do
    enable :logging
  end

  use Rack::Session::Cookie
  use OmniAuth::Builder do
    provider :twitter, 'KkhCOLgjUh6m0uEmytzMpaeNB', 'sfZVmCddjhY2UlYi8VlrZIATzRx8otEKLiqAziNXsWPshV9vsF'
  end
end
