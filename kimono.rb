require 'sinatra'

set :port, 8080


get '/' do
  erb :home
end

get '/home' do
  erb :home
end

get '/histoire' do
  erb :histoire
end

get '/obis' do
  erb :obis
end

get '/culture' do
  erb :culture
end

get '/types' do
  erb :types
end

get '/vetir' do
  erb :vetir
end

get '/inspiration' do
  erb :inspiration
end

get '/mes_kimonos' do
  erb :mes_kimonos
end

get '/bonnes_adresses' do
  erb :bonnes_adresses
end

get '/contact' do
  erb :contact


get '/a_propos' do
  erb :a_propos
end

get '/accuse' do
  erb :a_propos
end