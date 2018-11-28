require ('rspec')
require('place')
require ('pry')

describe("Place") do
  before() do
    Place.clear()
  end

  describe(".all") do
    it("is empty at first") do
      expect(Place.all()).to(eq([]))
    end
  end

  describe(".clear") do
    it("clears the list array") do
      place = Place.new()
      place.save()
      Place.clear()
      expect(Place.all()).to(eq([]))
    end
  end

  describe(".find") do
    it("finds a place in the list array") do
      place0 = Place.new()
      place0.save()
      place1 = Place.new()
      place1.save()
      expect(Place.find(place0.id)).to(eq(place0))
    end
  end

  describe("#save") do
    it("saves new place to class array") do
      place = Place.new()
      place.save()
      expect(Place.all()).to(eq([place]))
    end
  end

  describe("#id") do
    it("adds a unique id to each place starting at 0") do
      place = Place.new()
      place.save()
      expect(place.id()).to(eq(0))
    end
  end
end
