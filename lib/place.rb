class Place
  @@list = []
  @@next_id = 0

  def self.clear
    @@list = []
  end

  def self.all()
    @@list
  end

  def initialize()
    @id = @@next_id
    @@next_id += 1
  end

  def save
    @@list.push(self)
  end

  def id
  end
end
