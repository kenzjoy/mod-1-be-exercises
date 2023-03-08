class Venue
  attr_reader :name, 
              :capacity, 
              :patrons

  def initialize(name, capacity)
    @capacity = capacity
    @name = name
    @patrons = []
  end
end
