require 'sinatra'

get '/' do
  'Hello!'
end

get '/secret' do
  'You found the secret!'
end

get '/about' do
  'About'
end

get '/random-cat' do
  @name = ['Amigo', 'Oscar', 'Viking'].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/cat-form' do
  @name = params[:name]
  erb(:cat_form)
end
