
require_relative 'base'


module OnlinePortfolio
	class Router < Base

		get '/' do
		  erb :home
		end

		get '/blog' do
		  erb :blog
		end

		get '/contact' do
		  erb :contact
		end

		get '/webstack' do
		  erb :webstack
		end

	end
end