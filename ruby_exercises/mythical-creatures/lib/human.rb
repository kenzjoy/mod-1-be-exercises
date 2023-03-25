class Human
  attr_reader :name

  attr_accessor :encounter_counter,
                :notices_ogre

  def initialize(name = 'Jane')
    @name = name
    @encounter_counter = 0
    @notices_ogre = false
  end

  def notices_ogre?
    @encounter_counter.modulo(3).zero?
  end
end