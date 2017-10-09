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

get '/cat' do
  #http://bit.ly/1eze8aE
  '<div>
  <img src="http://bit.ly/1eze8aE">
  </div>'
end
