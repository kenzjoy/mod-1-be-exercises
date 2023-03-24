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
    else
      @statues[0].stoned = false
      @statues.shift
    end
    @statues << person
  end
end