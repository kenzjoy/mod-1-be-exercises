class Medusa
  attr_reader :name,
              :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(person)
    person.stoned = true
    @statues << person
  end
end