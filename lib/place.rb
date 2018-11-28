class Place
  attr_accessor(:city, :state, :description, :rank)
  attr_reader(:id)

  @@list = []
  @@next_id = @@list.length

  def initialize(city, state)
    @id = @@next_id
    @rank = @id + 1
    @@next_id += 1
    @city = city
    @state = state
  end

  def self.clear
    @@list = []
    @@next_id = @@list.length
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

  def self.find_rank(rank)
    @@list.each do |place|
      if rank == place.rank
        return place
      end
    end
    nil
  end

  def self.order
  end

  def save
    @@list.push(self)
  end

  def id
    @id
  end
end
