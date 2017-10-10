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
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index) + erb(:aram)
end

get '/named-cat' do
  @name = params[:name]
  @likes = params[:likes]
  erb(:index)
end

get '/aram' do
  erb(:aram)
end
