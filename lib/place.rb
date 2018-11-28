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

  def self.order(moved, new_rank)
    moved.rank = new_rank + ((moved.rank > new_rank) ? -0.5 : 0.5)
    @@list.sort! { |a,b| a.rank <=> b.rank}
    @@list.each_with_index do |place, index|
      place.rank = index + 1
    end
  end

  def self.order1(moved, new_rank)
    old_rank = moved.rank
    if new_rank < old_rank
      @@list.each do |place|
        if (place.rank < old_rank) && (place.rank >= new_rank) && (place != moved)
          place.rank += 1
        end
      end
    else
      @@list.each do |place|
        if(place.rank <= new_rank) && (place.rank > old_rank) && (place != moved)
          place.rank -= 1
        end
      end
    end
    moved.rank = new_rank
    @@list.sort! { |a,b| a.rank <=> b.rank}
  end

  def save
    @@list.push(self)
  end

  def id
    @id
  end
end
