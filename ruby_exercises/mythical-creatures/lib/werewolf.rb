class Werewolf
  attr_reader :name,
              :location

  attr_accessor :human,
                :wolf,
                :hungry

  def initialize(name, location = '')
    @name = name
    @location = location
    @human = true
    @wolf = false
    @hungry = false
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
    @hungry
  end
end