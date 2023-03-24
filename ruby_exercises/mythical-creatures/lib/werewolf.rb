class Werewolf
  attr_reader :name,
              :location,
              :victims

  attr_accessor :human,
                :wolf,
                :hungry

  def initialize(name, location = '')
    @name = name
    @location = location
    @human = true
    @wolf = false
    @hungry = false
    @victims = []
  end

  def human?
    @human
  end

  def wolf?
    @wolf
  end

  def change!
    if @human == true && @wolf == false
      @human = false
      @wolf = true
    elsif @human == false && @wolf == true
      @human = true
      @wolf = false
    end
  end

  def hungry?
    if @wolf == true && @human == false
      @hungry = true
    elsif @wolf == false && @human == true
      @hungry = false
    end
  end

  def consume(victim)
    if victim.status != :alive
      @victims << victim
    end
  end
end