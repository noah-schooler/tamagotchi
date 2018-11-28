require ('rspec')
require('place')
require ('pry')

describe("Place") do
  describe(".all") do
    it("is empty at first") do
      expect(Place.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves new place to class array") do
      place = Place.new()
      place.save()
      expect(Place.all()).to(eq([place]))
    end
  end

end
