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
  if(params['rank'])
    place = Place.find(params["id"].to_i)
    place.rank = params['rank'].to_i
  else
    city = params['city']
    state = params['state']
    description = params['description']
    place = Place.new(city, state)
    place.description = description
    place.save()
  end
  @places = Place.all()
  erb(:index)
end

get('/cities/:id') do
  @place = Place.find(params[:id].to_i)
  @length = Place.all().length
  erb(:city)
end
