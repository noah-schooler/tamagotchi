class Tamagotchi
  attr_reader(:health)

  def initialize
    @health = 100.0
    @last_time = Time.now.to_f
  end

  def check_health
    now = Time.now.to_f
    time_difference = now - @last_time
    @last_time = now
    @health -= (time_difference / 0.7)
    if @health < 0.0
      @health = 0.0
    end
    @health.round(1)
  end

  def feed(amount)
    @health += (20 * amount)
    if @health > 100
      @health = 100
    end
  end

end
