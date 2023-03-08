class Venue
  attr_reader :name, 
              :capacity, 
              :patrons

  def initialize(name, capacity)
    @capacity = capacity
    @name = name
    @patrons = []
  end

  def add_patron(patron)
    @patrons << patron
  end

  def yell_at_patrons
    @patrons.map(&:upcase)
  end

  def over_capacity?
    @patrons.count > @capacity
  end

  def kick_out
    while over_capacity?
      @patrons.pop
    end
  end
end
