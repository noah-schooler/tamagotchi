require('sinatra')
require('sinatra/reloader')
require('./lib/place.rb')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
  @list = "hello"
  erb(:index)
end
