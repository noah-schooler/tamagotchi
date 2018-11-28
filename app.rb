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
  @places = Place.all()
  erb(:index)
end
