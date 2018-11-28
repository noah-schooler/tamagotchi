class Place
  attr_accessor(:city, :state, :description)

  @@list = []
  @@next_id = 0

  def initialize(city, state)
    @id = @@next_id
    @@next_id += 1
    @city = city
    @state = state
  end

  def self.clear
    @@list = []
    @@next_id = 0
  end

  def self.all()
    @@list
  end

  def self.find(id)
    @@list.each do |item|
      if id == item.id()
        return item
      end
    end
  end

  def save
    @@list.push(self)
  end

  def id
    @id
  end
end
