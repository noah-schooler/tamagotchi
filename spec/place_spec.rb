require ('rspec')
require('place')
require ('pry')

describe("Place") do
  describe(".all") do
    it("is empty at first") do
      expect(Place.all()).to(eq([]))
    end
  end

  # describe("#save") do
  #   it("contains no content") do
  #     expect(Place.save()).to(eq([]))
  #   end
  # end

end
