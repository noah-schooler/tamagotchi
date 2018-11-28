class Place
  @@list = []
  @@next_id = 0

  def self.clear
    @@list = []
    @@next_id = 0
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
    @id
  end
end
