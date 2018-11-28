require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Places website') do
  before() do
    Place.clear()
  end

  describe('display list path', {:type => :feature}) do
    it('displays a list of places') do
      place = Place.new("Houston", "Texas")
      place.save()
      visit('/')
      expect(page).to have_content('Houston')
    end
  end

  describe('display a city in index', {:type => :feature}) do
    it('displays a city in index') do
      visit('/')
      fill_in('city', with: 'Houston')
      fill_in('state', with: 'Texas')
      click_button('Add')
      expect(page).to have_content("Houston, Texas")
    end
  end
end
