class Ogre
  attr_reader :name,
              :home


  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
  end

  def encounter(human)
    human.encounter_counter += 1
  end
end