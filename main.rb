require './db_config.rb'
require './models/new_arrival'
require './models/question'
require './models/user'     
require 'sinatra'
require 'sinatra/reloader'



get '/' do
  erb :index
end

#the db is connected
#build first page


get '/newArrival/intro' do
	erb :intro_newArrival
end

#display name form
get '/newArrival/name' do
	erb :name
end

#populating name into new_arrival obj
post '/newArrival/name' do 
	new_arrival = New_arrival.new(name: params[:name])
	"#{params[:name]}"
	redirect to 'newArrival/from'
end

#display location form
get '/newArrival/from' do
	erb :from
end

#populating location into new_arrival obj
post '/newArrival/from' do
	raise new_arrival.inspect
	new_arrival.location = params[:location]
	redirect to 'newArrival/gender'
end 




