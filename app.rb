require('sinatra')
require('sinatra/reloader')
require('./lib/place.rb')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
  @places = Place.all()
  erb(:index)
end

post('/') do
  city = params['city']
  state = params['state']
  description = params['description']
  place = Place.new(city, state)
  place.description = description
  place.save()
  @places = Place.all()
  erb(:index)
end

get('/cities/:id') do
  @place = Place.find(params[:id].to_i)
  erb(:city)
end
