require('sinatra')
require('sinatra/reloader')
require('./lib/places.rb')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
  @list = "hello"
  erb(:index)
end
