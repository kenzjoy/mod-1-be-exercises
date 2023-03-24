class Werewolf
  attr_reader :name,
              :location

  attr_accessor :human,
                :wolf

  def initialize(name, location = '')
    @name = name
    @location = location
    @human = true
    @wolf = false
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
    else @human == false && @wolf == true
      @human = true
      @wolf = false
    end
  end
end