require 'sinatra'

require 'jquery'

require 'pony'


set :port, 8080


get '/' do
  erb :home
end

get '/home.erb' do
  erb :home
end

get '/histoire.erb' do
  erb :histoire
end

get '/obis.erb' do
  erb :obis
end

get '/culture.erb' do
  erb :culture
end

get '/types.erb' do
  erb :types
end

get '/vetir.erb' do
  erb :vetir
end

get '/inspiration.erb' do
  erb :inspiration
end

get '/mes_kimonos.erb' do
  erb :mes_kimonos
end

get '/bonnes_adresses.erb' do
  erb :bonnes_adresses
end

get '/contact/?' do
  @title = 'Contact'
  erb :contact
end

post '/contact/?' do
  options = {
  :to => 'atakikoo@myself.com',
  :from => params[:email],
  :subject => params[:name],
  :body => params[:message],
  :via => :smtp,
  :via_options => {
    :address => 'smtp.sendgrid.net',
    :port => '587',
    :domain => 'heroku.com',
    :user_name => ENV['SENDGRID_USERNAME'],
    :password => ENV['SENDGRID_PASSWORD'],
    :authentication => :plain,
    :enable_starttls_auto => true
    }
  }
  
  Pony.mail(options)
  
  redirect '/contact'
end


get '/a_propos.erb' do
  erb :a_propos
end

get '/accuse.erb' do
  erb :a_propos
end