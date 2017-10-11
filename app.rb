require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  'Hello world!'
end

get '/secret' do
  'Secret squirrel!'
end

get '/noob' do
  'nooby-dooby-do'
end

get '/random-cat' do
  @likes =""
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index) 
end

post '/named-cat' do

  p params
  
  @name = params[:name] || ""
 
  
  erb(:index)
end

get "/form" do
  erb(:form)
end
