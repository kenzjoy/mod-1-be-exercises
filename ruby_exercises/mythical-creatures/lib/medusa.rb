class Medusa
  attr_reader :name,
              :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(person)
    if @statues.count < 3
      person.stoned = true
      @statues << person
    end
  end
end