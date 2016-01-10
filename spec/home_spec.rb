require 'rack/test'

it "displays home page" do 
  get '/'

  expect(last_response.body).to include("Thsis is the profile page")
end

it "displays blog" do 
  get '/blog'
end

it "displays contact" do 
  get '/welcome'
end

it "displays home page if there is no user" do 
  get '/welcome'
end