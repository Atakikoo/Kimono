require 'sinatra'

get '/' do
  erb :layout
end

get '/test' do
  erb :test
end