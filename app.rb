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
  place = Place.new(city, state)
  place.save()
  @places = Place.all()
  erb(:index)
end

get('/cities/:id') do
  # place = Place.new("Houston", "Texas")
  # place.description = "The second best city in Texas"
  # place.save()
  @place = Place.find(0)
  erb(:city)
end
