class Werewolf
  attr_reader :name,
              :location

  attr_accessor :human

  def initialize(name, location = '')
    @name = name
    @location = location
    @human = true
  end

  def human?
    @human
  end
end