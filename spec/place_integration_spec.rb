require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('display list path', {:type => :feature}) do
  it('displays a list of places') do
    Place.clear()
    place = Place.new("Houston", "Texas")
    visit('/')
    expect(page).to have_content('Houston')
  end
end
