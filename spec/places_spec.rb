require ('rspec')
require('places')
require ('pry')

describe("Places") do
  describe(".all") do
    it("is empty at first") do
      expect(Places.all()).to(eq([]))
    end
  end

  # describe("#save") do
  #   it("contains no content") do
  #     expect(Place.save()).to(eq([]))
  #   end
  # end

end
