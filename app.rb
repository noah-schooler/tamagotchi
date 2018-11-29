require('sinatra')
require('sinatra/reloader')
require('./lib/tamagotchi.rb')
also_reload('lib/**/*.rb')
require('pry')


@@tamagotchi = Tamagotchi.new

get('/') do
  if params["feed"]
    @@tamagotchi.feed(1)
    redirect '/'
  end
  @@tamagotchi.check_health()
  erb(:input)
end
