class Ogre
  attr_reader :name,
              :home

  attr_accessor :swings

  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @swings = 0
  end

  def encounter(human)
    human.encounter_counter += 1
  end

  def swing_at(human)
    @swings += 1
  end
end