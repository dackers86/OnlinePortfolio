require 'sinatra'

module OnlinePortfolio
	class Base < Sinatra::Base
		set :views, "./views"
	end
end